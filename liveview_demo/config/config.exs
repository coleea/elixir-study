# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :lidemo2, Lidemo2Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uL6Vkbn3On27l/HYdcSEnqfhoq1xQaQ5DMtGZDVDL2GuiAf9j+UyvHk+fCX0fHSp",
  render_errors: [view: Lidemo2Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Lidemo2.PubSub,
  live_view: [signing_salt: "cTdUfDUd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
