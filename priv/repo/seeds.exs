# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CrabsInventory.Repo.insert!(%CrabsInventory.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias CrabsInventory.{Repo, Item}

Repo.delete_all(Item)

Repo.insert! %Item{
    name: "Raspberry Pi",
    description: "A little computer",
    qty: 2
}

Repo.insert! %Item{
    name: "Arduino",
    description: "Nice board",
    qty: 4
}
