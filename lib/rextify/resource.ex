defmodule Rextify.Resource do
  require Logger

  defmacro __using__(_opts) do
    quote do

      import unquote(__MODULE__)

    do
  end

  defmacro get(conn, do: block) do
    quote do
      Logger.info "mission accomplished"
    end
  end
end
