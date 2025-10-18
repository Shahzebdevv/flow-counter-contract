// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    // State variable to store the count
    int256 private count;

    // Event to log changes
    event CountChanged(int256 newCount);

    // Constructor to initialize count
    constructor(int256 _initialCount) {
        count = _initialCount;
    }

    // Function to get the current count (view = read-only)
    function getCount() public view returns (int256) {
        return count;
    }

    // Function to increment the count
    function increment() public {
        count += 1;
        emit CountChanged(count);
    }

    // Function to decrement the count
    function decrement() public {
        count -= 1;
        emit CountChanged(count);
    }

    // Optional: Reset to zero
    function reset() public {
        count = 0;
        emit CountChanged(count);
    }
}

