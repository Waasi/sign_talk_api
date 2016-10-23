use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sign_talk_api, SignTalkApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :sign_talk_api, SignTalkApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DATABASE_USER"),
  password: System.get_env("DATABASE_PASSWORD"),
  database: "evah_api_dev",
  port: System.get_env("DATABASE_PORT"),
  hostname: System.get_env("DATABASE_HOST"),
  pool_size: 10
