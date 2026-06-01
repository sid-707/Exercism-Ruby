defmodule KitchenCalculator do
  def get_volume(_ = {_, volume}) do
    volume
  end

  def to_milliliter(_ = {unit, volume}) when unit === :milliliter do
    {:milliliter, volume * 1}
  end

  def to_milliliter(_ = {unit, volume}) when unit === :cup do
    {:milliliter, volume * 240}
  end

  def to_milliliter(_ = {unit, volume}) when unit === :fluid_ounce do
    {:milliliter, volume * 30}
  end

  def to_milliliter(_ = {unit, volume}) when unit === :teaspoon do
    {:milliliter, volume * 5}
  end

  def to_milliliter(_ = {unit, volume}) when unit === :tablespoon do
    {:milliliter, volume * 15}
  end

  def from_milliliter(_ = {_, volume}, unit) when unit === :cup do
    {:cup, volume / 240}
  end

  def from_milliliter(_ = {_, volume}, unit) when unit === :fluid_ounce do
    {:fluid_ounce, volume / 30}
  end

  def from_milliliter(_ = {_, volume}, unit) when unit === :teaspoon do
    {:teaspoon, volume / 5}
  end

  def from_milliliter(_ = {_, volume}, unit) when unit === :tablespoon do
    {:tablespoon, volume / 15}
  end

  def from_milliliter(_ = {_, volume}, unit) when unit === :milliliter do
    {:milliliter, volume}
  end

  def convert(volume_pair, unit) do
    ml_volume_pair = to_milliliter(volume_pair)
    from_milliliter(ml_volume_pair, unit)
  end
end
