defmodule HelloQuantum do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [worker(HelloQuantum.Scheduler, [])]
    opts = [strategy: :one_for_one, name: HelloQuantum.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
