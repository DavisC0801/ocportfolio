defmodule Ocportfolio.Repo do
  use Ecto.Repo,
    otp_app: :ocportfolio,
    adapter: Ecto.Adapters.Postgres
end
