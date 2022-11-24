" JUST FOR ELIXIR
iabbrev espec @spec name(String.t()) :: String.t()

iabbrev eedoc @doc """
      \<CR>
      \<CR>"""<UP> 


iabbrev eemdoc @moduledoc """
      \<CR>
      \<CR>"""<UP> 

iabbrev etag @tag :aze # mix test --only aze

iabbrev eput Map.put(

"iabbrev insp \|> IO.inspect(label: "")<LEFT><LEFT>
iabbrev ethen \|> then(fn arg ->end)<LEFT><LEFT><LEFT><LEFT>
iabbrev egettext <%= gettext() %><LEFT><LEFT><LEFT><LEFT>

iabbrev eii <%= %><LEFT><LEFT><LEFT>

vnoremap <leader>i sIO.inspect(<C-R>")<Esc><LEFT>
nnoremap <leader>i viwsIO.inspect(<C-R>")<Esc><LEFT>

iabbrev ediv  <div></div><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

iabbrev etest  use ExUnit.Case
iabbrev edoctest ## Examples
      \<CR>
      \<CR>    iex>

iabbrev e# #{}<LEFT>

iabbrev eiex <SPACE><SPACE><SPACE><SPACE>iex>

iabbrev e< \|>
iabbrev edoctest doctest XX.XX, import: true

iabbrev etype @type t :: %{}
iabbrev eH ~H"""<CR>"""

iabbrev ENum Enum
iabbrev ENUm Enum

iabbrev MAp Map
