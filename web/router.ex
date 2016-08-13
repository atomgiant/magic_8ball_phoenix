defmodule Magic8ballPhoenix.Router do
  use Magic8ballPhoenix.Web, :router

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

  scope "/", Magic8ballPhoenix do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index, as: :root
  end

  scope "/magic8ball", Magic8ball do
    pipe_through :api
    forward "/", Router
  end
end
