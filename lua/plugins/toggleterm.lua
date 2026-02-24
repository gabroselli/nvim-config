return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = function(term)
        if term.direction == "horizontal" then
          return 20
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<C-\>]],
      hide_numbers = true,
      shade_terminals = false,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      persist_mode = true,
      direction = "vertical", -- vertical split for Claude Code
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        width = function()
          return math.floor(vim.o.columns * 0.85)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.85)
        end,
      },
    })

    -- Custom terminal for Claude Code
    local Terminal = require("toggleterm.terminal").Terminal

    local claude = Terminal:new({
      cmd = "claude",
      dir = "git_dir",
      direction = "vertical",
      close_on_exit = false,
      on_open = function(term)
        vim.cmd("startinsert!")
      end,
    })

    local claude_float = Terminal:new({
      cmd = "claude",
      dir = "git_dir",
      direction = "float",
      close_on_exit = false,
      on_open = function(term)
        vim.cmd("startinsert!")
      end,
    })

    -- Toggle Claude Code in vertical split
    vim.keymap.set({ "n", "t" }, "<leader>cc", function()
      claude:toggle()
    end, { desc = "Toggle Claude Code (vertical)" })

    -- Toggle Claude Code in float
    vim.keymap.set({ "n", "t" }, "<leader>cC", function()
      claude_float:toggle()
    end, { desc = "Toggle Claude Code (float)" })

    -- Quick escape from terminal mode
    vim.keymap.set("t", "<C-x>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

    -- Window navigation from terminal
    vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Move to left window" })
    vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Move to bottom window" })
    vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move to top window" })
    vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Move to right window" })
  end,
}
