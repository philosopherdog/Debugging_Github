//: Playground - noun: a place where people can play

import UIKit

/*
 INSTRUCTIONS: 
 
 Given 2 positive int values, return the larger value that is in the range 10..20 inclusive, or return 0 if neither is in that range.
 max1020(11, 19) → 19
 max1020(19, 11) → 19
 max1020(11, 9) → 11
 max1020(9, 9) → 0
 */

func max1020(n1: Int, _ n2: Int) -> Int {
    //1.
    let range = 10...19
    //2.
    let n1IsInRange = range ~= n1
    let n2IsInRange = range ~= n2
    //3.
    if !(n1IsInRange || n2IsInRange) {
        return 0
    }
    //4,5,6, NB.
    return (n1IsInRange && n2IsInRange) ? max(n1, n2) : (n2IsInRange ? n2 : n1)
}

//NOTES:
//1. make a range
//2. test whether each argument falls within range (nb. the use of ~= operator!)
//3. if neither is in range, return 0
//4. check whether both n's are in range,
//5. if they are return the larger
//6. if not, then return the one that is in the range
// NB. the use of ternary operator. The last one is itself a ternary operator

max1020(11, 19) // 19
max1020(19, 11) // 19
max1020(11, 9) // 11
max1020(9, 89) // 0
max1020(9, 11) // 11






