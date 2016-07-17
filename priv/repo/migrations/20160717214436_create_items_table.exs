defmodule Todo.Repo.Migrations.CreateItemsTable do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :title, :string
      add :completed, :boolean
      timestamps
    end
  end
end
