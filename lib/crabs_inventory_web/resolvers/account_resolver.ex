defmodule CrabsInventoryWeb.Resolvers.AccountResolver do
  def find_user(_parent, %{id: id}, _resolution) do
    case CrabsInventory.Accounts.find_user(id) do
      nil ->
        {:error, "User ID #{id} not found"}
      user ->
        {:ok, user}
    end
  end
end
