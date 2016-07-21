defmodule Todo.Repo.Migrations.AddEstimatedMinutesToItems do
  use Ecto.Migration

  def change do
    alter table(:items) do
      add :estimated_minutes, :integer
    end
  end
end
