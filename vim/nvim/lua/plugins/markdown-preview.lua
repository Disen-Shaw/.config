
local markdown_preview_options = 
{
    mkdp_auto_start = 0,
    mkdp_auto_close = 1,
    mkdp_refresh_slow = 0,
    mkdp_command_for_global = 0,
    mkdp_open_to_the_world = 0,
    mkdp_open_ip = '',
    mkdp_browserfunc = '',
    mkdp_preview_options = 
    {
        mkit = {},
        katex = {},
        uml = {},
        maid = {},
        disable_sync_scroll = 0,
        sync_scroll_type = 'middle',
        hide_yaml_meta = 1,
        sequence_diagrams = {},
        flowchart_diagrams = {},
        content_editable = false,
        disable_filename = 0,
        toc = {},
    },
    mkdp_markdown_css = '',
    mkdp_highlight_css = '',
    mkdp_port = '',
    mkdp_page_title = vim.api.nvim_buf_get_name(0),
    mkdp_filetypes = {
        'markdown'
    },
    mkdp_theme = 'dark',
    mkdp_combine_preview = 0,
    mkdp_combine_preview_auto_refresh = 1
}

local function markdown_preview_config()
    for k, v in pairs(markdown_preview_options) do
        vim.g[k] = v
    end
end

markdown_preview_config()

