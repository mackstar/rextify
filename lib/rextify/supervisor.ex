defmodule Rextify.Superviser do

  def start_link do
    Supervisor.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init([]) do
    import Supervisor.Spec
    router_module = Application.get_env(:trot, :router, Rextify.Welcome)
    children = [
      Plug.Adapters.Cowboy.child_spec(:http, Rextify.Router, [], [port: 4001])
    ]
    opts = [strategy: :one_for_one, name: Rextify.Supervisor]

    Plug.Supervisor.start_link(children, opts)
  end
end