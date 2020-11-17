package = "include-header"
version = "0.1.0-1"


supported_platforms = {"linux", "macosx"}
source = {
  url = "http://github.com/jesusjavierdediego/kong-plugin-includeheader",
  tag = "0.1.0"
}

description = {
  summary = "include-header is a plugin for adding headers to responses.",
  homepage = "http://github.com/jesusjavierdediego/kong-plugin-includeheader",
  license = "MIT"
}

dependencies = {
}

local pluginName = "include-header"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".header_filter"] = "kong/plugins/"..pluginName.."/header_filter.lua",
  }
}