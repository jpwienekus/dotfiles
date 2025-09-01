local function fetch_latest_nvim_version()
  local result = vim.system(
    { "curl", "-s", "https://api.github.com/repos/neovim/neovim/releases/latest" },
    { text = true }
  ):wait()

  if result.code ~= 0 then
    return nil
  end

  local ok, json = pcall(vim.json.decode, result.stdout)

  if ok and json and json.tag_name then
    return json.tag_name
  end

  return nil
end

local function current_nvim_version()
  local version = vim.version()
  return string.format("v%d.%d.%d", version.major, version.minor, version.patch)
end

local function check_updates()
  local current_version = current_nvim_version()
  local latest_version = fetch_latest_nvim_version()

  if latest_version and latest_version ~= current_version then
    local message = string.format("New Neovim version available: %s (current: %s)", latest_version, current_version)
    vim.notify(message, vim.log.levels.INFO, {
      title = "Update available",
    })
  end
end

vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = function()
    check_updates()
  end,
})
