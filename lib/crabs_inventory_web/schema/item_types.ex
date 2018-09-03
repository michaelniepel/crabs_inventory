defmodule CrabsInventoryWeb.Schema.ItemTypes do
  use Absinthe.Schema.Notation

  @desc "An item"
  object :item do
    field :id, :id # clients can get the user id
    field :name, :string # clients can also ask for the name field
    field :description, :string
    field :qty, :integer
  end
end
