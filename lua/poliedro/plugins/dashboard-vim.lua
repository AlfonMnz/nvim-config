return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      local logo = [[
        _____      _ _          _           
        |  __ \    | (_)        | |          
        | |__) |__ | |_  ___  __| |_ __ ___  
        |  ___/ _ \| | |/ _ \/ _` | '__/ _ \ 
        | |  | (_) | | |  __/ (_| | | | (_) |
        |_|   \___/|_|_|\___|\__,_|_|  \___/ 
         __  __                 _            
        |  \/  |               | |           
        | \  / | __ _ _ __   __| | __ _      
        | |\/| |/ _` | '_ \ / _` |/ _` |     
        | |  | | (_| | | | | (_| | (_| |     
        |_|__|_|\__,_|_| |_|\__,_|\__,_|     
        |___  /                              
           / / ___  _ __ _ __ __ _           
          / / / _ \| '__| '__/ _` |          
         / /_| (_) | |  | | | (_| |          
        /_____\___/|_|  |_|  \__,_|          
                                                    
      ]]
  
      logo = string.rep("\n", 8) .. logo .. "\n\n"
  
      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          -- stylua: ignore
          center = {
	    { action = "NvimTreeOpen /mnt/e/Poli/Code/2024/movie-rewind",           desc = " Movie Rewind",    icon = "> ", key = "mr"},
            { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", key = "f" },
            { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
            { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
            { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
            { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
            { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
            { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }
  
      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end
  
      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "DashboardLoaded",
          callback = function()
            require("lazy").show()
          end,
        })
      end
  
      return opts
    end,
  }
