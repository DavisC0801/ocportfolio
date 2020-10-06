# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ocportfolio,
  ecto_repos: [Ocportfolio.Repo]

# Configures the endpoint
config :ocportfolio, OcportfolioWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hlUGWmG7ELrvtfLecEylLc4kP/MBE9xFFDgLV5n0keUGiqEQLGNIpHzvlOftmH+I",
  render_errors: [view: OcportfolioWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ocportfolio.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "J88q+Om0"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
