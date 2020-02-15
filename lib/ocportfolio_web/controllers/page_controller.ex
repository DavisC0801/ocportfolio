defmodule OcportfolioWeb.PageController do
  use OcportfolioWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
