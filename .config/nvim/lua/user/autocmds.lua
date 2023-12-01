vim.api.nvim_create_autocmd({"BufEnter"}, {
    pattern = {"*.md"},
    callback = function(ev)
        local bufnr = vim.api.nvim_get_current_buf()
        local winid = vim.api.nvim_get_current_win()
        vim.bo[bufnr].textwidth = 80
        vim.bo[bufnr].wrapmargin = 0
        vim.opt.formatoptions:append("t")
        vim.wo[winid].linebreak = true
    end
})
