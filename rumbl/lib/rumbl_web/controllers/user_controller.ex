defmodule RumblWeb.UserController do
  use RumblWeb, :controller
  alias Rumbl.Account.User
  alias Rumbl.Account
  def index(conn, _params) do
    users = Account.all(User)
    render(conn, "index.html", users: users)
  end
end
  