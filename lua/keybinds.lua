local wk = require("which-key")

wk.setup()

wk.register({
	-- Increment/Decrement
	["<c-a>"] = { "<c-a>", "Increment" },
	["<c-x>"] = { "<c-x>", "Decrement" },

	-- Window
	["<c-w>"] = {
	    name = "window",
	    h = { "<c-w>h", "Left" },
	    j = { "<c-w>j", "Down" },
	    k = { "<c-w>k", "Up" },
	    l = { "<c-w>l", "Right" },
	    v = { "<c-w>v", "Split Vertical" },
	    s = { "<c-w>s", "Split Horizontal" },
	    q = { "<c-w>q", "Close" },
	    ["="] = { "<c-w>=", "Balance" },
	    ["|"] = { "<c-w>|", "Maximize" },
	    ["_"] = { "<c-w>_", "Minimize" },
	    ["<"] = { "<c-w><", "Move Left" },
	    [">"] = { "<c-w>>", "Move Right" },
	    ["-"] = { "<c-w>-", "Move Down" },
	    ["+"] = { "<c-w>+", "Move Up" },
	    ["?"] = { "<c-w>?", "Show All" },
	},

	-- Delete word backwards
	["<c-h>"] = { "<c-w>", "Delete Word Backwards" },

	-- Delete word forwards
	["<c-d>"] = { "<c-o>dw", "Delete Word Forwards" },

	-- Delete line
	["<c-u>"] = { "<c-o>dd", "Delete Line" },

	-- Insert new line above
	["<c-o>"] = { "<c-o>O", "Insert New Line Above" },

	-- Insert new line below
	["<c-p>"] = { "<c-o>o", "Insert New Line Below" },

	-- Move line up
	["<c-k>"] = { "<c-o>ddkP", "Move Line Up" },

	-- Move line down
	["<c-j>"] = { "<c-o>ddp", "Move Line Down" },

	-- Move to start of line
	["<c-a>"] = { "<c-o>^", "Move to Start of Line" },

	-- Move to end of line
	["<c-e>"] = { "<c-o>$", "Move to End of Line" },

	-- Move to start of file
	["<c-b>"] = { "<c-o>gg", "Move to Start of File" },

	-- Move to end of file
	["<c-f>"] = { "<c-o>G", "Move to End of File" },

	-- Move to next word
	["<c-n>"] = { "<c-o>w", "Move to Next Word" },

	-- Move to previous word
	["<c-p>"] = { "<c-o>b", "Move to Previous Word" },

	-- Move to next paragraph
	["<c-l>"] = { "<c-o>}", "Move to Next Paragraph" },

	-- Move to previous paragraph
	["<c-h>"] = { "<c-o>{", "Move to Previous Paragraph" },

	["<leader>"] = {
	-- Bufferline
	b = {
	    name = "buffer",
	    n = { "<cmd>BufferLineCycleNext<cr>", "Next Buffer" },
	    p = { "<cmd>BufferLineCyclePrev<cr>", "Prev Buffer" },
	    d = { "<cmd>BufferLineCloseRight<cr>", "Close Buffer" },
	    D = { "<cmd>BufferLineCloseLeft<cr>", "Close Buffer" },
	    l = { "<cmd>BufferLinePick<cr>", "Pick Buffer" },
	    b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
	},
	-- NvimTree
	t = {
	    name = "tree",
	    t = { "<cmd>NvimTreeToggle<cr>", "Toggle Tree" },
	    r = { "<cmd>NvimTreeRefresh<cr>", "Refresh Tree" },
	    f = { "<cmd>NvimTreeFindFile<cr>", "Find File" },
        },
    },
})
