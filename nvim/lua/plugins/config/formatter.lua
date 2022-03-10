require('formatter').setup({
  filetype = {
    go = {
      function()
        return {
          exe = 'gofmt',
          args = { '-w' },
          stdin = false,
        }
      end,

      function()
        return {
          exe = 'goimports',
          args = { '-w' },
          stdin = false,
        }
      end
    },

    python = {
      function()
        return {
          exe = 'black',
          args = { '-t py310' },
          stdin = false,
        }
      end,

      function()
        return {
          exe = 'isort',
          stdin = false,
        }
      end
    },

    rust = {
      function()
        return {
          exe = 'rustfmt',
          stdin = false,
        }
      end
    }
  }
})
