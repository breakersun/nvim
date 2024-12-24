return {
  "abeleinin/papyrus",
  cmd ={'PapyrusStart', 'PapyrusView'},
  config = function()
    vim.g.papyrus_latex_engine = 'xelatex'
    vim.g.papyrus_viewer       = 'sumatrapdf'
    vim.g.papyrus_template     = 'eisvogel.latex'
    vim.g.papyrus_pandoc_args  = '--listings'
    -- vim.g.papyrus_pandoc_args  = '--from markdown --template eisvogel.latex --listings'
    -- vim.g.papyrus_pandoc_args  = '-t beamer --slide-level=2'
  end
}
