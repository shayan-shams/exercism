package space_age

Planet :: enum {
	Mercury,
	Venus,
	Earth,
	Mars,
	Jupiter,
	Saturn,
	Uranus,
	Neptune,
}

EARTH_YEAR: f64 = 31557600.0

PLANET_SECONDS: [8]f64 = {
    EARTH_YEAR * 0.2408467,  // Mercury
    EARTH_YEAR * 0.61519726, // Venus
    EARTH_YEAR,              // Earth
    EARTH_YEAR * 1.8808158,  // Mars
    EARTH_YEAR * 11.862615,  // Jupiter
    EARTH_YEAR * 29.447498,  // Saturn
    EARTH_YEAR * 84.016846,  // Uranus
    EARTH_YEAR * 164.79132,  // Neptune
}

age :: proc(planet: Planet, seconds: int) -> f64 {
	return f64(seconds) / PLANET_SECONDS[planet]
}