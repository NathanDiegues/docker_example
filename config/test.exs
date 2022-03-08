import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :projeto_docker, ProjetoDocker.Repo,
  username: System.get_env("DB_USER", "master"),
  password: System.get_env("DB_PASS", "example"),
  database: System.get_env("DB_NAME", "mockdb"),
  port: System.get_env("DB_PORT", "5678"),
  hostname: System.get_env("DB_HOST", "localhost"),
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :projeto_docker, ProjetoDockerWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

System.put_env("SFTP_HOST", "localhost")
System.put_env("SFTP_PORT", "2222")
System.put_env("SFTP_USER", "foo")
System.put_env("SFTP_PASS", "123")
