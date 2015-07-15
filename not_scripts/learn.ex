defmodule List do
    def start_link do
        state = []
        Task.start_link(fn -> loop(state) end)
    end

    defp loop(state) do
        receive do
            {:add, element, caller} -> 
                send caller, state ++ [element]
                loop(state ++ [element])
            {:print, caller} ->
                send caller, state
                IO.inspect state
                loop(state)
        end
    end
end