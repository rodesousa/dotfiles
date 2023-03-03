" JUST FOR ELIXIR
iabbrev espec @spec name(String.t()) :: String.t()

iabbrev EDOC @doc """
      \<CR>
      \<CR>"""<UP> 


iabbrev EMDOC @moduledoc """
      \<CR>
      \<CR>"""<UP> 

iabbrev etag @tag :aze # mix test --only aze

iabbrev eput Map.put(

iabbrev insp \|> IO.inspect(label: "")<LEFT><LEFT>
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

iabbrev weight300 font-light
iabbrev weight400 font-normal
iabbrev weight500 font-medium
iabbrev weight600 font-semibold
iabbrev weight700 font-bold
iabbrev weight800 font-extrabold
iabbrev weight900 font-black

iabbrev size12 text-xs
iabbrev size14 text-sm
iabbrev size16 text-base
iabbrev size18 text-lg
iabbrev size20 text-xl
iabbrev size24 text-2xl
iabbrev size36 text-4xl

iabbrev secondaryblack sapio-black-700
iabbrev colorbluegreen sapio-bluegreen-500
"autocmd BufWritePost *.html.heex !mix format <afile>
