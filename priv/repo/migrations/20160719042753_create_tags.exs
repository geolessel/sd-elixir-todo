defmodule Todo.Repo.Migrations.CreateTags do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :name, :string
      add :user_id, references(:users)
    end

    create table(:items_tags) do
      add :item_id, references(:items)
      add :tag_id, references(:tags)
    end
  end
end
