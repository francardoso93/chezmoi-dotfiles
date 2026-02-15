return {
  "mfussenegger/nvim-dap",
  opts = function()
    local dap = require("dap")

    -- Add Wrangler attach configuration for TypeScript/JavaScript
    for _, lang in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact" }) do
      dap.configurations[lang] = dap.configurations[lang] or {}
      table.insert(dap.configurations[lang], 1, {
        type = "pwa-node",
        request = "attach",
        name = "Attach to Wrangler (9229)",
        port = 9229,
        cwd = "${workspaceFolder}",
        sourceMaps = true,
        resolveSourceMapLocations = {
          "${workspaceFolder}/**",
          "!**/node_modules/**",
        },
        skipFiles = { "<node_internals>/**", "node_modules/**" },
      })
    end
  end,
}
