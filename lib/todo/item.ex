defmodule Todo.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :title, :string
    field :completed, :boolean, default: false
    field :estimated_minutes, :integer
    belongs_to :user, Todo.User
    many_to_many :tags, Todo.Tag, join_through: "items_tags"
    timestamps
  end

  def changeset(item, params \\ %{}) do
    item
    |> cast(params, [:title, :completed, :user_id])
  end

  def add_tag(item, tag) do
    tags = Enum.map([tag | item.data.tags], &Ecto.Changeset.change/1)

    item
    |> put_assoc(:tags, tags)
  end
end
