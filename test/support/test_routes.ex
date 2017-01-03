defmodule Rextify.ExampleResource do
  use Rextify.Resource

  @route "/example"
  @status 200

  get (conn) do
    conn[:body] 
  end

end