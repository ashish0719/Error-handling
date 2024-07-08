// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Farmhouse {
    
    uint public wheatQuantity;
    uint public riceQuantity;

   
    function collectCrop(string memory crop, uint quantity) public {
       
        require(quantity > 100, "Quantity must be greater than 100 kg");

        if (stringsEqual(crop, "Wheat")) {
            wheatQuantity += quantity;
            
            assert(wheatQuantity >= quantity);
        } else if (stringsEqual(crop, "Rice")) {
            riceQuantity += quantity;
           
            assert(riceQuantity >= quantity);
        } else {
            revert("Only Wheat and Rice are accepted");
        }
    }

    
    function stringsEqual(string memory a, string memory b) internal pure returns (bool) {
        bytes memory Item1 = bytes(a);
        bytes memory Item2 = bytes(b);
        if (Item1.length != Item2.length) {
            return false;
        }
        for (uint i = 0; i < Item1.length; i++) {
            if (Item1[i] != Item2[i]) {
                return false;
            }
        }
        return true;
    }

    // Function to get the quantity of Wheat
    function getWheatQuantity() public view returns (uint) {
        return wheatQuantity;
    }

    // Function to get the quantity of Rice
    function getRiceQuantity() public view returns (uint) {
        return riceQuantity;
    }
}
