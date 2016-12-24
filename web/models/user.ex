defmodule PhoenixCrud.User do
  use PhoenixCrud.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :bio, :string
    field :age, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :email, :bio, :age])
    |> validate_required([:name, :email, :bio, :age])
  end
end
