# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :crabs_inventory,
  ecto_repos: [CrabsInventory.Repo]

# Configures the endpoint
config :crabs_inventory, CrabsInventoryWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2GXq1jgXfAQmrfqE/Pq7e8272nHEok4Q30ZPunlS9VNMNR53stZdLjfk8AdKKWaM",
  render_errors: [view: CrabsInventoryWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CrabsInventory.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
