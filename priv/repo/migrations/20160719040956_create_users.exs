defmodule Todo.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      timestamps
    end

    alter table(:items) do
      add :user_id, references(:users)
    end
  end
end
