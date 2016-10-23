defmodule SignTalkApi.TranslationsView do
  use SignTalkApi.Web, :view

  def render("translation.json", %{response: response}) do
    %{videos: response}
  end
end
