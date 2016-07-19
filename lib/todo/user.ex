defmodule Todo.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    has_many :items, Todo.Item
    timestamps
  end
end
