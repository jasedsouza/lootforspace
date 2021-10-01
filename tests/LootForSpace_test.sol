// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "../contracts/LootForSpace.sol";

contract LootForSpaceTest {
   
    uint[] tokenIds;
   
    LootForSpace lootForSpaceToTest;
    function beforeAll () public {
        tokenIds.push(uint(10));
        lootForSpaceToTest = new LootForSpace();
    }
    
    function checkSpecials () public {
        Assert.equal(lootForSpaceToTest.getSpecial(1234), string(""), "1S. Should not get a Special");
        Assert.notEqual(lootForSpaceToTest.getSpecial(345), string(""), "6S. Should get a Special");
    }    

    function checkItems () public {
        Assert.equal(lootForSpaceToTest.getItem(1234), string(""), "1I. Should not get an Item");
        Assert.notEqual(lootForSpaceToTest.getItem(3422), string(""), "2I. Should get an Item");
    }    
}    