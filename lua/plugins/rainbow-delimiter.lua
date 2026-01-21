return {
  "HiPhish/rainbow-delimiters.nvim",
  event = "BufReadPre",
  config = function()
    vim.g.rainbow_delimiters = {
      strategy = {
        [""] = require("rainbow-delimiters").strategy["global"],
        vim = require("rainbow-delimiters").strategy["local"],
      },
      query = {
        [""] = "rainbow-delimiters",
        lua = "rainbow-blocks",
      },
      priority = {
          [''] = 110,
          lua = 210,
      },
      highlight = {
        "RainbowDelimiterYellow",
        "RainbowDelimiterViolet",
        "RainbowDelimiterBlue",
        "RainbowDelimiterRed",
        "RainbowDelimiterGreen",
        "RainbowDelimiterOrange",
        "RainbowDelimiterCyan",
      },
    }
  end,
}

