# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :magic8ball_phoenix, Magic8ballPhoenix.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "kF0ZXAufjWDWl7aAQ66JM2/LeA75aJKZsgPE9w2xp2miiQu9TDG7QS9UQAozg/un",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Magic8ballPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :magic_8ball, cowboy_start: false

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
