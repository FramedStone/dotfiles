local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return 
end


-- nvim settings
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
})
