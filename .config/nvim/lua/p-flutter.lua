require("flutter-tools").setup({
  -- (uncomment below line for windows only)
  -- flutter_path = "home/flutter/bin/flutter.bat",

  debugger = {
    enabled = true,
    run_via_dap = false,
    exception_breakpoints = {},
    register_configurations = function(_)
      local dap = require("dap")

      local is_windows = vim.fn.has("win32") > 0
      -- local path_sep = is_windows and "\\" or "/"
      local flutter_exec = is_windows and "flutter.bat" or "flutter"
      local flutterBin = vim.fn.resolve(vim.fn.exepath(flutter_exec))
      -- local flutterSdk = vim.fn.fnamemodify(flutterBin, ":h:h")
      -- local dartSdk = flutterSdk
      --   .. path_sep
      --   .. "bin"
      --   .. path_sep
      --   .. "cache"
      --   .. path_sep
      --   .. "dart-sdk"

      if is_windows then
        dap.adapters.dart = {
          type = "executable",
          command = vim.fn.exepath("cmd.exe"),
          args = { "/c", flutterBin, "debug_adapter" },
          enrich_config = function(conf, on_config)
            local new_config =
              vim.tbl_deep_extend("force", conf, { stopOnEntry = false })
            on_config(new_config)
          end,
          options = {
            detached = false,
            initialize_timeout_sec = 10,
          },
        }
      else
        dap.adapters.dart = {
          type = "executable",
          command = flutterBin,
          enrich_config = function(conf, on_config)
            local new_config =
              vim.tbl_deep_extend("force", conf, { stopOnEntry = false })
            on_config(new_config)
          end,
          args = { "debug_adapter" },
          options = {
            detached = false,
            initialize_timeout_sec = 10,
          },
        }
      end
    end,
  },
  dev_log = {
    -- toggle it when you run without DAP
    enabled = true,
    open_cmd = "tabedit",
  },
  dev_tools = {
    autostart = true, -- autostart devtools server if not detected
    auto_open_browser = false,
  },
  lsp = {
    on_attach = function(client, bufnr)
      vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
    end,
    capabilities = vim.tbl_deep_extend(
      "force",
      vim.lsp.protocol.make_client_capabilities(),
      require("cmp_nvim_lsp").default_capabilities()
    ),
    color = {
      enabled = true,
      background = false,
      background_color = { r = 19, g = 17, b = 24 },
      foreground = false,
      virtual_text = true,
      virtual_text_str = "■",
    },
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      updateImportsOnRename = true,
      enableSnippets = true,
      experimentalRefactors = true,
      renameFilesWithClasses = "always",
    },
  },
})
