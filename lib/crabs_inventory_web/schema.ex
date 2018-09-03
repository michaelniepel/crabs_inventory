defmodule CrabsInventoryWeb.Schema do
  use Absinthe.Schema
  import_types Absinthe.Type.Custom
  import_types CrabsInventoryWeb.Schema.AccountTypes
  alias CrabsInventoryWeb.Resolvers

  query do

    @desc "Get a user"
    field :user, :user do
      arg :id, non_null(:id)
      resolve &Resolvers.AccountResolver.find_user/3
    end

  end

end
