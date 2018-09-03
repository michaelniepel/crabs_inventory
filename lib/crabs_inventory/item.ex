defmodule CrabsInventory.Item do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  alias CrabsInventory.Repo


  schema "items" do
    field :description, :string
    field :name, :string
    field :qty, :integer

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:name, :description, :qty])
    |> validate_required([:name, :description, :qty])
  end


  def find_item(id) do
    Repo.one(from i in CrabsInventory.Item, where: i.id == ^id)
  end
end
