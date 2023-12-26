// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

error MintPriceNotPaid();
error MaxSupply();
error NonExistentTokenURI();
error WithdrawTransfer();

contract DPEP is ERC20 {
    constructor(_name memory, _symbol memory, _recepient account) ERC20(_name, _symbol) {
        uint256 amount = 500000000 * 10 ** 18;
        _mint(_recepient, amount);
    }

    function burn(address from, uint256 value) external onlyOwner {
        _burn(from, value);
    }

    function extractValue
}
