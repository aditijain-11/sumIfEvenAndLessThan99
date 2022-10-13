//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

// start - 		305919  gas
// calldata - It is cheaper to load variables directly from calldata, rather than copying them to memory.
// calldata is a special data location that contains the function arguments, 
// only available for external function call parameters. Calldata is a non-modifiable, non-persistent 
// area where function arguments are stored, and behaves mostly like memory.
// execution  cost for calldata - 	241292 gas
// by taking a local variable = 242144 gas(should be reduced but isn't)
// short circuiting condition only check the first condition and if its false no need to check second
// short circuiting gas - 239780 gas
// 
contract GasGolf{
    uint public total;
    function sunIfEvenAndLessThan99(uint [] calldata nums) external {
        uint localtotal = total;
        uint len = nums.length;
        for(uint i =0; i<len; ++i){
            uint nums = nums[i];
            if(nums == 0 && nums <99){
                localtotal += nums;
            }
        }
        total = localtotal;
        
    }
}