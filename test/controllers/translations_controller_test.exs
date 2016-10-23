defmodule SignTalkApi.TranslationsControllerTest do
  use SignTalkApi.ConnCase

  setup do
    conn = build_conn
    {:ok, conn: conn}
  end

  test "POST #translation with valid arguments", %{conn: conn} do
    conn = post conn, "api/translation", words: ["Hello"]
    response = json_response(conn, 200)

    assert %{"videos" => [_url]} = response
  end
end
