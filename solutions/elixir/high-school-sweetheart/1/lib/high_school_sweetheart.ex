defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim()
    |> String.at(0)
  end

  def initial(name) do
    name
    |> first_letter()
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    [first_name, last_name] = String.split(full_name)
    "#{initial(first_name)} #{initial(last_name)}"
  end

  def pair(full_name1, full_name2) do
    first_initials = initials(full_name1)
    second_initials = initials(full_name2)
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{first_initials}  +  #{second_initials}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
