# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sign_talk_api,
  ecto_repos: [SignTalkApi.Repo]

# Configures the endpoint
config :sign_talk_api, SignTalkApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RstluaJaX9iJ5hVV+8/sJc720sflnD4+5o2RsUgFUiDflRGRmlGBblrdeZP8Kyim",
  render_errors: [view: SignTalkApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: SignTalkApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
