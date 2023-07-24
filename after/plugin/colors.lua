function ColorSchemeTweak( color )
   color = color or 'pretty-in-pink-neovim'
   vim.cmd.colorscheme( color )

   vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' } )
   vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' } )

end

ColorSchemeTweak()
