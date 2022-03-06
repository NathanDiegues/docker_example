defmodule ProjetoDockerWeb.PageController do
  use ProjetoDockerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
