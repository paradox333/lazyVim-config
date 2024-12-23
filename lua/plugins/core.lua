return {
  {
    "snacks.nvim",
    ---@type snacks.Config
    opts = {
      dashboard = {
        preset = {
          header = [[ 
                                                                                  
▀███▀▀▀██▄      ██     ▀███▀▀▀██▄       ██     ▀███▀▀▀██▄   ▄▄█▀▀██▄ ▀███▀   ▀██▀ 
  ██   ▀██▄    ▄██▄      ██   ▀██▄     ▄██▄      ██    ▀██▄██▀    ▀██▄ ███▄  ▄█   
  ██   ▄██    ▄█▀██▄     ██   ▄██     ▄█▀██▄     ██     ▀███▀      ▀██  ▀██▄█▀    
  ███████    ▄█  ▀██     ███████     ▄█  ▀██     ██      ███        ██    ███     
  ██         ████████    ██  ██▄     ████████    ██     ▄███▄      ▄██  ▄█▀▀██▄   
  ██        █▀      ██   ██   ▀██▄  █▀      ██   ██    ▄██▀██▄    ▄██▀ ▄█   ▀██▄  
▄████▄    ▄███▄   ▄████▄████▄ ▄███▄███▄   ▄████▄████████▀   ▀▀████▀▀ ▄██▄▄  ▄▄███▄
                                                                                  
    ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
          keys = {
            { icon = "󰀫 ", key = "n", desc = "Nuevo Archivo", action = ":ene | startinsert" },
            { icon = "󱃮 ", key = "r", desc = "Archivo Reciente", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = "󰇂 ", key = "c", desc = "Configuración", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = "󰘧 ", key = "s", desc = "Restaurar Última Sesión", section = "session" },
            { icon = "󰏉 ", key = "l", desc = "Lazy", action = ":Lazy" },
          },
        },

        vim.api.nvim_create_autocmd("ColorScheme", {
          callback = function()
            vim.api.nvim_set_hl(0, "SnacksDashboardHeader", {
              fg = "#1ddd33",
              bold = false,
            })
            vim.api.nvim_set_hl(0, "SnacksDashboardIcon", {
              fg = "#1ddd33",
              bold = false,
            })
            vim.api.nvim_set_hl(0, "SnacksDashboardDesc", {
              fg = "#ab5dee",
              bold = false,
            })
          end,
        }),
      },
    },
  },
}
