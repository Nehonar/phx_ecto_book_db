# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_world,
  ecto_repos: [HelloWorld.Repo]

# Configures the endpoint
config :hello_world, HelloWorldWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oxQ11e7o8QC0CQtIXmyI9LajP3ObavLcx1pDM/RvgHlGygbx4Q37T1U0TZCn320V",
  render_errors: [view: HelloWorldWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HelloWorld.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
