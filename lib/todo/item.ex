defmodule Todo.Item do
  use Ecto.Schema

  schema "items" do
    field :title, :string
    field :completed, :boolean, default: false
    timestamps
  end
end
