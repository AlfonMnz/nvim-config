local api = vim.api
local function helloWorld()
    print("Hello World")
end

local function openWindow()
	 local buf = api.nvim_create_buf(false, true)

  -- Configurar opciones del buffer aquí
  -- Por ejemplo, podríamos deshabilitar el line numbering en esta ventana
  -- api.nvim_buf_set_option(buf, 'number', false)

  -- Definir las dimensiones y posición de la ventana
  local anchura = math.ceil(vim.o.columns * 0.7) -- 70% del ancho de la ventana de Neovim
  local altura = math.ceil(vim.o.lines * 0.7) -- 70% de la altura de la ventana de Neovim
  local col = math.ceil((vim.o.columns - anchura) / 2) -- Centrado en el eje X
  local row = math.ceil((vim.o.lines - altura) / 2) -- Centrado en el eje Y

  -- Configuración de la ventana
  local opts = {
    style = 'minimal',
    relative = 'editor',
    width = anchura,
    height = altura,
    col = col,
    row = row,
		title = "Tengo el pito pocho"
  }

  -- Crear la ventana
  local win = api.nvim_open_win(buf, true, opts)

  -- Configurar opciones de la ventana aquí
  -- Por ejemplo, podríamos hacer que la ventana no tenga line numbers
  -- api.nvim_win_set_option(win, 'number', false)
end

local function replaceAll(opts)
    -- Asume que args es una cadena con todos los argumentos
    local parts = vim.split(opts.args, " ")
    if #parts ~= 2 then
        print("Error: replaceAll requiere exactamente 2 argumentos.")
        return
    end
    local pattern, replacement = parts[1], parts[2]
    local escapedPattern = vim.fn.escape(pattern, '/')
    local escapedReplacement = vim.fn.escape(replacement, '/')
    vim.cmd(string.format("%%s/%s/%s/g", escapedPattern, escapedReplacement))
end

local functions = {
    Hello = { ["function"] = helloWorld, nargs = 0 },
		ReplaceAll = {["function"] = replaceAll, nargs = "*"},
		OpenWindow = {["function"] = openWindow, nargs = 0}
}

for k, v in pairs(functions) do
    vim.api.nvim_create_user_command(k, v["function"], {nargs = v.nargs})
end

