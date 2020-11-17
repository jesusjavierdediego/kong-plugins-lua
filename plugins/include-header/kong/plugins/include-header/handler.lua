local kong = kong
-- Import our class for removing sensitive headers
local ih = require "kong.plugins.include-header.header_filter"

-- Import the base kong plugin
local BasePlugin = require "kong.plugins.base_plugin"

-- Extend our plugin from the base plugin
local IncludeHeaderHandler = BasePlugin:extend()

-- Setting this very early to avoid logging any service-tokens
IncludeHeaderHandler.PRIORITY = 5

-- creates a new instance of the plugin
function IncludeHeaderHandler:new()
  IncludeHeaderHandler.super.new(self, "include-header")
end

-- plugin built-in method to handle response header filtering
function IncludeHeaderHandler:header_filter(conf)
  IncludeHeaderHandler.super.header_filter(self)
  -- Add our logic to add the new header
  ih.add(conf, kong.response.get_headers())
end

-- return the plugin class
return IncludeHeaderHandler
