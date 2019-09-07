defmodule Localai.Schema.Package do
  use Ecto.Schema
  import Ecto.Changeset

  schema "packages" do
    field :info, :string

    timestamps()
  end

  def changeset(package, attrs) do
    package
    |> cast(attrs, [:info])
    |> validate_required([:info])
  end
end
