defmodule Localai.Schema.Ride do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rides" do


    timestamps()
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
