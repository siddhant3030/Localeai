defmodule Localai.Schema.Vechile do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vechiles" do
    field :number, :integer

    timestamps()
  end

  def changeset(vechile, attrs) do
    vechile
    |> cast(attrs, [:number])
    |> validate_required([:number])
  end
end
