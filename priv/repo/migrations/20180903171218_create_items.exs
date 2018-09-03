defmodule CrabsInventory.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :description, :string
      add :qty, :integer

      timestamps()
    end

  end
end
