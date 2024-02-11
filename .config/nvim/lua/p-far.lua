vim.api.nvim_set_var("far#source", "rgnvim")

local currentFilePath = debug.getinfo(1, "S").source:sub(2)
local parentFolder = currentFilePath:match("(.-)/[^/]+/[^/]+$")
vim.api.nvim_set_var("far#ignore_files", { parentFolder .. "/.farignore" })

if vim.api.nvim_get_var("far#source") == "rgnvim" then
  local function execute_command(command)
    local handle = assert(io.popen(command, "r"))
    local output = assert(handle:read("*a"))
    handle:close()
    return output
  end

  -- Check if pip is installed
  -- local pip_check = execute_command("pip --version")
  -- if not pip_check:find("pip") then
  --   print("pip is not installed. Please install pip and try again.")
  --   return
  -- end

  -- Check if pynvim is installed
  local output = execute_command("pip show pynvim")

  if not output:find("Version:") then
    -- pynvim is not installed, install it using pip
    local install_output = execute_command("pip install pynvim")

    -- Check if installation was successful
    local install_check = execute_command("pip show pynvim")
    if not install_check:find("Version:") then
      print("Failed to install pynvim.")
      return
    end

    print("pynvim has been installed.")
  end
end
