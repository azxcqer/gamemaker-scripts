#define irandom_range_not_inclusive
///irandom_range_not_inclusive(x, x2)
//because sometimes you need this for reasons
return irandom_range(argument0 + 1, argument1 - 1)

#define random_range_not_inclusive
///random_range_not_inclusive(x1, x2)
//also making it not integer... I don't see how I'd use it, but who knows?
return random_range(argument0 + 1, argument1 - 1)
