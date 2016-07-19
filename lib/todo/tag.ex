defmodule Todo.Tag do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tags" do
    field :name, :string
    many_to_many :items, Todo.Item, join_through: "items_tags"
    belongs_to :user, Todo.User
  end

  def changeset(tag, params \\ %{}) do
    tag
    |> cast(params, [:name])
  end
end
