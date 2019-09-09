defmodule LocalaiWeb.UserController do
  use LocalaiWeb, :controller
  alias Localai.Model.User, as: UserModel
  alias Localai.Schema.User

  action_fallback LocalaiWeb.FallbackController

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _params) do
    users = UserModel.list_users()
    render(conn, "index.json", users: users)
  end

  def update(conn, %{"id" => id, "user" => user_params}) do
    user = UserModel.get_user!(id)

    with {:ok, %User{} = user} <- UserModel.update_user(user, user_params) do
      render(conn, "show.json", user: user)
    end
  end

  def delete(conn, %{"id" => id}) do
    user = UserModel.get_user!(id)

    with {:ok, %User{}} <- UserModel.delete_user(user) do
      send_resp(conn, :no_content, "")
    end
  end

  def show(conn, _params) do
    user = Guardian.Plug.current_resource(conn)
    conn |> render("user.json", user: user)
  end
end
