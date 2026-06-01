defmodule Username do

  defp clean_word('', modified) do
    modified
  end
  defp clean_word([first_char | other_chars], modified) do
    case first_char do
      first_char when ((first_char >= 97 and first_char <= 122) or first_char == 95) -> clean_word(other_chars, modified ++ [first_char])
      first_char when first_char === ?ä -> clean_word(other_chars, modified ++ 'ae')
      first_char when first_char == ?ö -> clean_word(other_chars, modified ++ 'oe')
      first_char when first_char == ?ü -> clean_word(other_chars, modified ++ 'ue')
      first_char when first_char == ?ß -> clean_word(other_chars, modified ++ 'ss')
      _ -> clean_word(other_chars, modified)
    end
  end
  def sanitize(username) do
    # ä becomes ae
    # ö becomes oe
    # ü becomes ue
    # ß becomes ss

    clean_word(username, '')
  end
end
