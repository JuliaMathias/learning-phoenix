defmodule TodayWeb.PageController do
  use TodayWeb, :controller

  def index(conn, _params) do
    redirect(conn, to: Routes.page_path(conn, :redirect_test))
  end

  def redirect_test(conn, _params) do
    render(conn, "index.html")
  end
end
