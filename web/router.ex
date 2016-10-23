defmodule SignTalkApi.Router do
  use SignTalkApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SignTalkApi do
    pipe_through :api
  end
end
