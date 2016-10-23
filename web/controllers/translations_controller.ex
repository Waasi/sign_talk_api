defmodule SignTalkApi.TranslationsController do
  use SignTalkApi.Web, :controller

  alias Text2Sign.Translator

  def create(conn, %{"words" => words}) do
    response = Translator.translate(words)

    conn
    |> put_status(:ok)
    |> render("translation.json", response: response)
  end
end
