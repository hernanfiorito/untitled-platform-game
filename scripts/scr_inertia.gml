///scr_inertia (init_value, end_value, step)
if (argument0 < argument1){
	return min(argument0 + argument2, argument1);
}else{
	return max(argument0 - argument2, argument1);
}
