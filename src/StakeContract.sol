// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract StakeContract {
    mapping(address => mapping(address => uint256)) public s_balances;

    error TransferFailed();

    function stake(uint256 _amount, address token) external returns (bool) {
        s_balances[msg.sender][token] += _amount;
        bool success = IERC20(token).transferFrom(
            msg.sender,
            address(this),
            _amount
        );
        if (!success) revert TransferFailed();
        return success;
    }

    // Function Brainstorming:
    // ------------------------------------------------------------
    function unstake() public {}

    function withdraw() public {}

    function claimReward() public {}

    function exit() public {}

    function getReward() public {}
    // function getStakeBalance() public view returns(uint256) {}
    // function getRewardBalance() public view returns(uint256) {}
    // function getStakeCount() public view returns(uint256) {}
    // function getRewardCount() public view returns(uint256) {}
    // function getStakeInfo(uint256 _index) public view returns(address, uint256, uint256, uint2
}
