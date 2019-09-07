defmodule LocalaiWeb.Router do
  use LocalaiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LocalaiWeb do
    pipe_through :api
  end
end
