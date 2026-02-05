-- Most of the LSP config is made by default through :LazyExtras, so here are just overrides
-- Extra config is saved at lazyvim.json
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              schemas = {
                -- ArgoCD Application CRD schema
                ["https://raw.githubusercontent.com/datreeio/CRDs-catalog/main/argoproj.io/application_v1alpha1.json"] = {
                  "/**/templates/**/*.yaml",
                  "/**/templates/**/*.yml",
                },
              },
            },
          },
        },
      },
    },
  },
}
