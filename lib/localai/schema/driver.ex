defmodule Localai.Schema.Driver do
  use Ecto.Schema
  import Ecto.Changeset
  alias Localai.Schema.User
  alias Localai.Schema.Ride

  schema "drivers" do
    field :name, :string
    belongs_to :user, User
    belongs_to :ride, Ride

    timestamps()
  end

  def changeset(driver, attrs) do
    driver
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
