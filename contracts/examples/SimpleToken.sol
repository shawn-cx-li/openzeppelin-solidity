pragma solidity ^0.5.0;

import "../token/ERC20/ERC20Capped.sol";
import "../token/ERC20/ERC20Detailed.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract SimpleToken is ERC20Capped, ERC20Detailed {
    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor (string memory name, string memory symbol, uint8 decimals, uint256 supply, uint256 capital) ERC20Detailed(name, symbol, decimals) ERC20Capped(capital* (10 ** uint256(decimals))) public {
        uint256 INITIAL_SUPPLY = supply * (10 ** uint256(decimals));
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
