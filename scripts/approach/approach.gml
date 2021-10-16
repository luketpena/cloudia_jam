// Script assets have changed for v2.3.0 see

///@arg a
///@arg b
///@arg amount
// Moves "a" towards "b" by "amount" and returns the result
// Nice bcause it will not overshoot "b", and works in both directions
function approach(a, b, amount){
	if (a < b)
	{
	    a += amount;
	    if (b > a)
	        return b;
	}
	else
	{
	    a -= amount;
	    if (a < b)
	        return a;
	}
	return b;
}