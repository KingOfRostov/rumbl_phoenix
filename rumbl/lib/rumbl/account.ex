defmodule Rumbl.Account do


    import Ecto.Query, warn: false
    alias Rumbl.Repo

    alias Rumbl.Account.User


    def all(User), do: Repo.all(User)

    # def all(_module),do: []

    def get(User,id), do: Repo.get!(User, id)

    def get(_module, id), do: []
    
    def get_by(module,params) do
    Enum.find all(module),fn map -> 
        Enum.all?(params,fn{key,val}-> Map.get(map,key) == val end)
    end
end
end