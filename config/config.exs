# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :goose,
  ecto_repos: [Goose.Repo]

# Configures the endpoint
config :goose, GooseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ae/9YH29RVpKY5/esYT5SMu1OH75k7zIvftgc18LDdrVFg+41D/1or57SftKlxzi",
  render_errors: [view: GooseWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Goose.PubSub,
  live_view: [signing_salt: "1AUUqihj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
