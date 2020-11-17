local typedefs = require "kong.db.schema.typedefs"

return {
  name = "include-header",
  fields = {
    { config = {
        type = "record",
        fields = {
          { add = {
            type = "array",
            default = {},
            elements = { type = "string" },
          } }
        },
      },
    },
  },
}
