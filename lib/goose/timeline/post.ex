defmodule Goose.Timeline.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :likes_count, :integer, default: 0
    field :repost_count, :integer, default: 0
    field :username, :string, default: "Gooseling"

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:body])
    |> validate_required([:body])
    |> validate_length(:body, min: 2)
    |> validate_length(:body, max: 280)
  end
end
