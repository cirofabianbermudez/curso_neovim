vim.o.background = "dark" -- or "light" for light mode

-- 8 themes [1-17]
local themes = {
    "gruvbox-material",     -- 1
    "nightfox",             -- 2
    "dayfox",               -- 3
    "dawnfox",              -- 4
    "duskfox",              -- 5
    "nordfox",              -- 6
    "terafox",              -- 7
    "carbonfox",            -- 8
    "dracula",              -- 9
    "neosolarized",         -- 10
    "melange",              -- 11
    "sonokai",              -- 12
    "tokyonight",           -- 13
    "tokyonight-night",     -- 14
    "tokyonight-storm",     -- 15
    "tokyonight-day",       -- 16
    "tokyonight-moon",      -- 17
    "doom-one",             -- 18
    "monokai",              -- 19
    "monokai_pro",          -- 20
    "monokai_soda",         -- 21
    "monokai_ristretto",    -- 22
    "oceanicnext",          -- 23
    "nord",                 -- 24
    "gruvbox",              -- 25
}

local theme = themes[2]

if(theme == "sonokai")then
    local variants = {"default", "atlantis", "andromeda", "shusia", "maia", "espresso"}
    local command = "let g:sonokai_style = ".."'"..variants[2].."'"
    vim.cmd(command)
    vim.cmd("let g:sonokai_better_performance = 1")
end

vim.cmd("colorscheme" .. " " ..theme)


