defmodule CrabsInventoryWeb.Schema do
  use Absinthe.Schema
  import_types Absinthe.Type.Custom
  import_types CrabsInventoryWeb.Schema.AccountTypes
  alias AppnameWeb.Resolvers

  query do

    @desc "Get a user"
    field :user, :user do
      arg :id, non_null(:id)
      resolve &Resolvers.Accounts.find_user/3
    end

  end

end
