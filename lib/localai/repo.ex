defmodule Localai.Repo do
  use Ecto.Repo,
    otp_app: :localai,
    adapter: Ecto.Adapters.Postgres
end
