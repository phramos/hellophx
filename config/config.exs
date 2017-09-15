# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hellophx,
  ecto_repos: [Hellophx.Repo]

# Configures the endpoint
config :hellophx, HellophxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2lgtLTrdY+PSP/L39DahpvTHgvQHTiCWzXh3n7yxS2GQID0lKkWsBMzXIsW4iUvd",
  render_errors: [view: HellophxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hellophx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
