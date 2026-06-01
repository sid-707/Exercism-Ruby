defmodule NameBadge do
  def print(id, name, department) do
    dept = if department, do: String.upcase(department), else: "OWNER"

    name_and_dept = "#{name} - #{dept}"

    if id do
      "[#{id}] - " <> name_and_dept
    else
      name_and_dept
    end
  end
end
