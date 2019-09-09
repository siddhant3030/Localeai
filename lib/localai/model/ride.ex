defmodule Localai.Model.Ride do
  alias Localai.Repo
  alias Localai.Schema.Ride

  def list_rides() do
    Repo.all(Rider)
  end

  def get_ride!(id), do: Repo.get!(Ride, id)

  def create_ride(attrs \\ %{}) do
    %Ride{}
    |> Ride.changeset(attrs)
    |> Repo.insert()
  end

  def update_ride(%Ride{} = ride, attrs) do
    ride
    |> Ride.changeset(attrs)
    |> Repo.update()
  end

  def delete_ride(%Ride{} = ride) do
    Repo.delete(ride)
  end
end
