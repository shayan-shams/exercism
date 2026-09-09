package space_age
import "core:fmt"

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

EARTH_YEAR :: 31557600.0

age :: proc(planet: Planet, seconds: int) -> f64 {
    secondsf := f64(seconds)
	switch planet {
    case .Mercury: return secondsf / (EARTH_YEAR * 0.2408467)
    case .Venus: return secondsf / (EARTH_YEAR * 0.61519726)
    case .Earth: return secondsf / EARTH_YEAR
    case .Mars: return secondsf / (EARTH_YEAR * 1.8808158)
    case .Jupiter: return secondsf / (EARTH_YEAR * 11.862615)
    case .Saturn: return secondsf / (EARTH_YEAR * 29.447498)
    case .Uranus: return secondsf / (EARTH_YEAR * 84.016846)
    case .Neptune: return secondsf / (EARTH_YEAR * 164.79132)
    }
    return -1
}