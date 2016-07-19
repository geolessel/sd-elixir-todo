defmodule Todo.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :title, :string
    field :completed, :boolean, default: false
    belongs_to :user, Todo.User
    timestamps
  end

  def changeset(item, params \\ %{}) do
    item
    |> cast(params, [:title, :completed, :user_id])
  end
end
