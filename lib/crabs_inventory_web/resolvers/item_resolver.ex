defmodule CrabsInventoryWeb.Resolvers.ItemResolver do
  def find_item(_parent, %{id: id}, _resolution) do
    case CrabsInventory.Item.find_item(id) do
      nil ->
        {:error, "Item ID #{id} not found"}
      item ->
        {:ok, item}
    end
  end
end
