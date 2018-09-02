defmodule CrabsInventoryWeb.Router do
  use CrabsInventoryWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CrabsInventoryWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  forward "/graphql",
    Absinthe.Plug,
    schema: CrabsInventoryWeb.Schema

# For the GraphiQL interactive interface, a must-have for happy frontend devs.
  forward "/graphiql",
    Absinthe.Plug.GraphiQL,
    schema: CrabsInventoryWeb.Schema,
    interface: :simple

  # Other scopes may use custom stacks.
  # scope "/api", CrabsInventoryWeb do
  #   pipe_through :api
  # end
end
