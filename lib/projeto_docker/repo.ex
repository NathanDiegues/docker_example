defmodule ProjetoDocker.Repo do
  use Ecto.Repo,
    otp_app: :projeto_docker,
    adapter: Ecto.Adapters.Postgres
end
