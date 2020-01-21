autocmd FileType elixir iabbrev spec @spec name(String.t()) :: String.t()

abbrev mm {{ }}<LEFT><LEFT><LEFT>
abbrev edoc @doc """
      \<CR>
      \<CR>"""<UP> 


abbrev emdoc @moduledoc """
      \<CR>
      \<CR>"""<UP> 

abbrev etag @tag :aze # mix test --only aze
abbrev eput Map.put(
abbrev insp \|> IO.inspect()
