defmodule Localai.Model.Driver do
  alias Localai.Repo
  alias Localai.Schema.Driver

  def list_drivers() do
    Repo.all(Driver)
  end

  def get_driver!(id), do: Repo.get!(Driver, id)

  def create_driver(attrs \\ %{}) do
    %Driver{}
    |> Driver.changeset(attrs)
    |> Repo.insert()
  end

  def update_driver(%Driver{} = driver, attrs) do
    driver
    |> Driver.changeset(attrs)
    |> Repo.update()
  end

  def delete_driver(%Driver{} = driver) do
    Repo.delete(driver)
  end
end
