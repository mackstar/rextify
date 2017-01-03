defmodule Rextify do
  use Application

  def start(_type, _args) do
    Plug.Supervisor.start_link
  end
end
