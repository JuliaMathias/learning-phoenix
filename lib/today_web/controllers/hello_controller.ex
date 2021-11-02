defmodule TodayWeb.HelloController do
  use TodayWeb, :controller

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _params) do
    render(conn, "index.html")
  end

  @spec show(Plug.Conn.t(), map) :: Plug.Conn.t()
  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end
end
