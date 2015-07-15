defmodule Sorting do
  def qsort(list) do
    case list do
      [] -> []
      [h|t] ->
            qsort(for n <- t, n < h, do: n) 
              ++ [h] ++
            qsort(for n <- t, n >= h, do: n)
    end
  end    
end

IO.inspect Sorting.qsort([10,123,443,2,3,2,1])