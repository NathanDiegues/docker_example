# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :projeto_docker,
  ecto_repos: [ProjetoDocker.Repo]

# Configures the endpoint
config :projeto_docker, ProjetoDockerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PAMn3gMmMhjiNDYqlGoDXdc/lcpckZLyBNDVehvm7q8hrOyPJlxML2a68y2tpHYw",
  render_errors: [view: ProjetoDockerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ProjetoDocker.PubSub,
  live_view: [signing_salt: "fwAojFsF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
