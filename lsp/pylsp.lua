return {
  filetypes = { "python" },

  root_markers = {
    "pyproject.toml",
    "uv.lock",
    ".git",
  },

  cmd = { "uv", "run", "pylsp" },
}
