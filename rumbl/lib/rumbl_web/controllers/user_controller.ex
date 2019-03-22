defmodule RumblWeb.UserController do
  use RumblWeb, :controller
  alias Rumbl.Account.User
  alias Rumbl.Account

  def index(conn, _params) do
    users = Account.all(User)
    render(conn, "index.html", users: users)
  end

  def show(conn, %{"id" => id}) do
    user = Account.get(User, id)
    render(conn, "show.html", user: user)
  end
end
  