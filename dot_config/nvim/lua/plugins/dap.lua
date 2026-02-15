return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
      local dap = require("dap")

      -- Wrangler/Cloudflare Workers attach configuration
      local wrangler_config = {
        type = "pwa-node",
        request = "attach",
        name = "Attach to Wrangler (9229)",
        port = 9229,
        cwd = "${workspaceFolder}",
        sourceMaps = true,
        -- Try to resolve source maps from the workspace
        resolveSourceMapLocations = {
          "${workspaceFolder}/**",
          "!**/node_modules/**",
        },
        skipFiles = {
          "<node_internals>/**",
          "node_modules/**",
        },
      }

      -- Add to typescript configurations
      if dap.configurations.typescript then
        table.insert(dap.configurations.typescript, 1, wrangler_config)
      else
        dap.configurations.typescript = { wrangler_config }
      end

      -- Add to javascript configurations too
      if dap.configurations.javascript then
        table.insert(dap.configurations.javascript, 1, wrangler_config)
      else
        dap.configurations.javascript = { wrangler_config }
      end
    end,
  },
}
