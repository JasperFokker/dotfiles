return {
    "olimorris/codecompanion.nvim",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        -- The following are optional:
        { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
    },
    config = function()
        require("codecompanion").setup({
            adapters = {
                gemini = function()
                    return require("codecompanion.adapters").extend("gemini", {
                        name = "gem",
                        env = {
                            api_key = "",
                            model = "",
                        },
                    })
                end,
            },
            strategies = {
                chat = {
                    adapter = "gemini",
                },
                inline = {
                    adapter = "gemini",
                },
                agent = {
                    adapter = "gemini",
                },
            },
        })
    end,
}

