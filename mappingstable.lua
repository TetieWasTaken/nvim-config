-- Get the current maps from nvim
local mappings = vim.api.nvim_get_keymap('n')

-- Loop through the mappings table and put them in a markdown table format

local markdown = "| Mode | LHS | RHS | Description |\n|------|-----|-----|-------------|\n"

for _, mapping in ipairs(mappings) do
  for _, map in pairs(mapping) do
    print(map)
  end
end

-- Write the markdown table to a file
local file = io.open("mappings.md", "w")
file:write(markdown)
file:close()

-- Print a message to the user
print("Mappings table written to mappings.md")
