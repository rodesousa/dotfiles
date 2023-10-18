--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

lvim.builtin.project.manual_mode = true
-- general
lvim.log.level = "warn"
-- lvim.format_on_save.enabled = false
lvim.colorscheme = "lunar"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<S-t>"] = ":tabnew<CR>"
lvim.keys.normal_mode["<Tab>"] = ":bnext<cr>"
lvim.keys.normal_mode["<leader>t"] = ":TestNearest<cr>"
lvim.keys.normal_mode["<leader>T"] = ":TestFile<cr>"
lvim.keys.normal_mode["d*"] = "viwc*<C-r>\"*<Esc>"
lvim.keys.visual_mode["d*"] = "c*<C-r>\"*"
lvim.keys.normal_mode["d)"] = "viwc(<C-r>\")<Esc>"
lvim.keys.visual_mode["d)"] = "c(<C-r>\")"
lvim.keys.normal_mode["d]"] = "viwc[<C-r>\"]<Esc>"
lvim.keys.visual_mode["d]"] = "c[<C-r>\"]"
lvim.keys.normal_mode["d}"] = "viwc{<C-r>\"}<Esc>"
lvim.keys.visual_mode["d}"] = "c{<C-r>\"}"
lvim.keys.normal_mode["d'"] = "viwc'<C-r>\"'<Esc>"
lvim.keys.visual_mode["d'"] = "c'<C-r>\"'"
lvim.keys.normal_mode["d\""] = "viwc\"<C-r>\"\"<Esc>"
lvim.keys.visual_mode["d\""] = "c\"<C-r>\"\""
lvim.keys.normal_mode["d`"] = "viwc`<C-r>\"`<Esc>"
lvim.keys.visual_mode["d<"] = "c<<C-r>\">"
lvim.keys.normal_mode["d<"] = "viwc<<C-r>\"><Esc>"
lvim.keys.visual_mode["d>"] = "c</<C-r>\">"
lvim.keys.normal_mode["d>"] = "viwc</<C-r>\"><Esc>"

vim.opt.expandtab = false
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"


-- iabbrev ethen \|> then(fn arg ->end)<LEFT><LEFT><LEFT><LEFT>
-- iabbrev egettext <%= gettext() %><LEFT><LEFT><LEFT><LEFT>
-- iabbrev eii <%= %><LEFT><LEFT><LEFT>
--
vim.cmd('iabbrev insp \\|> IO.inspect(label: "")<LEFT><LEFT>')
vim.cmd('iabbrev ethen \\|> then(fn arg ->end)<LEFT><LEFT><LEFT><LEFT>')
vim.cmd('iabbrev egettext <%= gettext() %><LEFT><LEFT><LEFT><LEFT>')
vim.cmd('iabbrev eii <%= %><LEFT><LEFT><LEFT>')
vim.cmd('iabbrev e# #{}<LEFT>')
vim.cmd('iabbrev eiex <SPACE><SPACE><SPACE><SPACE>iex>')
vim.cmd('iabbrev e< \\|>')

vim.cmd('iabbrev ENum Enum')
vim.cmd('iabbrev ENUm Enum')
vim.cmd('iabbrev MAp Map')


-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }
lvim.builtin.which_key.mappings['p'] = { { "<cmd>Telescope find_files<CR>", "Find file" } }
lvim.builtin.which_key.mappings['f'] = { { "<cmd>Telescope live_grep<CR>", "Search text" } }
lvim.builtin.which_key.mappings['b'] = { { "<cmd>Telescope buffers<CR>", "Buffers" } }
lvim.builtin.which_key.mappings['q'] = {}
lvim.builtin.which_key.mappings['w'] = {}
lvim.builtin.which_key.mappings['c'] = {}
lvim.builtin.which_key.mappings['o'] = { { ":SymbolsOutline<cr>", "Outline" } }
lvim.builtin.which_key.mappings['T'] = { { ":TestFile<CR>", "Test: Test all file" } }
lvim.builtin.which_key.mappings['t'] = { { ":TestNearest<CR>", "Test: Unit Test" } }
lvim.builtin.which_key.mappings['m'] = { { "<C-w><S-T>", "Tab: Move in a new tab" } }
lvim.builtin.which_key.mappings['w'] = { { ":TroubleToggle<cr>", "See errors and warnings" } }
lvim.builtin.which_key.mappings['q'] = { { ":BufferKill<cr>", "Close Buffer" } }


-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.format_on_save = true
-- lvim.builtin.bufferline.active = false
-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	"tsx",
	"css",
	"rust",
	"java",
	"yaml",
	"elixir",
	"heex",
	"eex",
	"html"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{
		"mg979/vim-visual-multi"
	},
	{
		"vim-test/vim-test"
	},
	{
		"tiagovla/scope.nvim"
	},
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require('symbols-outline').setup()
		end
	},
	{
		"tpope/vim-fugitive",
		cmd = {
			"G",
			"Git",
			"Gdiffsplit",
			"Gread",
			"Gwrite",
			"Ggrep",
			"GMove",
			"GDelete",
			"GBrowse",
			"GRemove",
			"GRename",
			"Glgrep",
			"Gedit"
		},
		ft = { "fugitive" }
	},
	{
		"elixir-editors/vim-elixir"
	},
	{ "lunarvim/colorschemes" },
	{ "arcticicestudio/nord-vim" }

}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })

local cmp = require 'cmp'

cmp.setup({
	snippet = {
		expand = function(args)
			-- setting up snippet engine
			-- this is for vsnip, if you're using other
			-- snippet engine, please refer to the `nvim-cmp` guide
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = {
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' }, -- For vsnip users.
		{ name = 'buffer' }
	})
})

local execute = vim.api.nvim_command
local fn = vim.fn
local fmt = string.format

local pack_path = fn.stdpath("data") .. "/site/pack"

-- ensure a given plugin from github.com/<user>/<repo> is cloned in the pack/packer/start directory
local function ensure(user, repo)
	local install_path = fmt("%s/packer/start/%s", pack_path, repo)
	if fn.empty(fn.glob(install_path)) > 0 then
		execute(fmt("!git clone https://github.com/%s/%s %s", user, repo, install_path))
		execute(fmt("packadd %s", repo))
	end
end

-- ensure the plugin manager is installed
ensure("wbthomason", "packer.nvim")

-- `on_attach` callback will be called after a language server
-- instance has been attached to an open buffer with matching filetype
-- here we're setting key mappings for hover documentation, goto definitions, goto references, etc
-- you may set those key mappings based on your own preference
local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true }

	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cd', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
end

-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Neovim doesn't support snippets out of the box, so we need to mutate the
-- capabilities we send to the language server to let them know we want snippets.
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true
require('lspconfig').elixirls.setup({
	-- cmd = { "/home/rodesousa/.elixir-ls-1.14.3/release/language_server.sh" },
	cmd = { "/home/rodesousa/.elixir-ls/release/language_server.sh" },
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		elixirLS = {
			-- I choose to disable dialyzer for personal reasons, but
			-- I would suggest you also disable it unless you are well
			-- aquainted with dialzyer and know how to use it.
			dialyzerEnabled = false,
			-- I also choose to turn off the auto dep fetching feature.
			-- It often get's into a weird state that requires deleting
			-- the .elixir_ls directory and restarting your editor.
			fetchDeps = false
		}
	}
})
local cmp = require 'cmp'

-- helper functions
local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

cmp.setup({
	snippet = {
		expand = function(args)
			-- setting up snippet engine
			-- this is for vsnip, if you're using other
			-- snippet engine, please refer to the `nvim-cmp` guide
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = {
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif vim.fn["vsnip#available"](1) == 1 then
				feedkey("<Plug>(vsnip-expand-or-jump)", "")
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item()
			elseif vim.fn["vsnip#jumpable"](-1) == 1 then
				feedkey("<Plug>(vsnip-jump-prev)", "")
			end
		end, { "i", "s" }),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' }, -- For vsnip users.
		{ name = 'buffer' }
	})
})

require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "elixir", "heex", "eex" },
	sync_install = false,
	ignore_install = {},
	highlight = {
		enable = true,
		disable = {},
	},
}

vim.schedule(function()
	-- vim.wait(1000)
	local tailwindcss_lsp_opts = {
		root_dir = function(fname)
			return require("lspconfig.util").root_pattern("assets/tailwind.config.js", "tailwind.config.js",
				"tailwind.config.cjs", "tailwind.js",
				"tailwind.cjs")(fname)
		end,
		init_options = {
			userLanguages = { heex = "html", elixir = "html" }
		},
	}

	require("lvim.lsp.manager").setup("tailwindcss", tailwindcss_lsp_opts)
end)

lvim.builtin.illuminate.options.filetype_overrides = {
	elixir = {
		providers = {
			"lsp",
			"regex",
		},
	},
}

lvim.builtin.telescope.defaults.vimgrep_arguments = {
	"rg",
	"--color=never",
	"--no-heading",
	"--with-filename",
	"--line-number",
	"--column",
	"--smart-case",
}

require 'luasnip'.filetype_extend("heex", { "html", "elixir" })
