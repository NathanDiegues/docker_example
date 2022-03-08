defmodule ProjetoDocker.SftpTest do
  use ExUnit.Case

  describe "Sftp" do
    test "Connection" do
      connection = SFTPClient.connect(
        host: System.get_env("SFTP_HOST"),
        user: System.get_env("SFTP_USER"),
        password: System.get_env("SFTP_PASS"),
        port: System.get_env("SFTP_PORT") |> String.to_integer()
      )

      # IO.inspect(connection)

      assert {:ok, %SFTPClient.Conn{}} = connection
    end

    test "Send file" do
      {:ok, connection} = SFTPClient.connect(
        host: System.get_env("SFTP_HOST"),
        user: System.get_env("SFTP_USER"),
        password: System.get_env("SFTP_PASS"),
        port: System.get_env("SFTP_PORT") |> String.to_integer()
      )

      result = SFTPClient.upload_file(connection, "./test_file.txt", "./upload/test_file.txt")

      assert {:ok, "./upload/test_file.txt"} = result
    end
  end
end
