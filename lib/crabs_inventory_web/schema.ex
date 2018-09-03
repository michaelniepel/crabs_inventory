defmodule CrabsInventoryWeb.Schema do
  use Absinthe.Schema
  import_types Absinthe.Type.Custom
  import_types CrabsInventoryWeb.Schema.AccountTypes
  import_types CrabsInventoryWeb.Schema.ItemTypes
  alias CrabsInventoryWeb.Resolvers

  query do
    @desc "Get a user"
    field :user, :user do
      arg :id, non_null(:id)
      resolve &Resolvers.AccountResolver.find_user/3
    end

    @desc "Get an item"
    field :item, :item do
      arg :id, non_null(:id)
      resolve &Resolvers.ItemResolver.find_item/3
    end
  end

  # query do
  #   @desc "Get an item"
  #   field :item, :item do
  #     arg :id, non_null(:id)
  #     resolve &Resolvers.ItemResolver.find_item/3
  #   end
  # end

end
