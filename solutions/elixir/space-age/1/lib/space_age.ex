defmodule SpaceAge do
  @earth_seconds 31557600
  @mercury_orbital_period 0.2408467
  @venus_orbital_period 0.61519726
  @mars_orbital_period 1.8808158
  @jupiter_orbital_period 11.862615
  @saturn_orbital_period 29.447498
  @uranus_orbital_period 84.016846
  @neptune_orbital_period 164.79132

  @type planet ::
          :mercury
          | :venus
          | :earth
          | :mars
          | :jupiter
          | :saturn
          | :uranus
          | :neptune

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet', or an error if 'planet' is not a planet.
  """
  @spec age_on(planet, pos_integer) :: {:ok, float} | {:error, String.t()}
  def age_on(planet, seconds) do
    earth_years = seconds / @earth_seconds

    case planet do
      :mercury -> {:ok, earth_years / @mercury_orbital_period}
      :venus -> {:ok, earth_years / @venus_orbital_period}
      :mars -> {:ok, earth_years / @mars_orbital_period}
      :jupiter -> {:ok, earth_years / @jupiter_orbital_period}
      :saturn -> {:ok, earth_years / @saturn_orbital_period}
      :uranus -> {:ok, earth_years / @uranus_orbital_period}
      :neptune -> {:ok, earth_years / @neptune_orbital_period}
      :earth -> {:ok, earth_years}
      _ -> {:error, "not a planet"}
    end
  end
end
