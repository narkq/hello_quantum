# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :hello_quantum, HelloQuantum.Scheduler,
  jobs: [
    {"* * * * *", fn -> Logger.bare_log(:info, "it works!") end}
  ]
