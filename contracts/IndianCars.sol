// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract indiancars is ERC721A {
    address public owner;

    // Maximum number of tokens that can be minted
    uint256 public maxQuantity = 5;

    // Base url for the nfts
    string baseUrl =
        "https://gateway.pinata.cloud/ipfs/QmPBHXWDdLnwvvLY8xj4Dt1cotgdj116TBxmrenA6yiyA6/?_gl=1*1epuiae*_ga*MTY2NjczMzAxNy4xNjkwNTc3MDk0*_ga_5RMPXG14TE*MTY5MTE4MjY0Ni44LjEuMTY5MTE4NDQxNi42MC4wLjA."
    // URL for the prompt description
    string public prompt = "Most Popular Indian Cars";

    constructor() ERC721A("IndianCars", "IC") {
        owner = msg.sender;
    }

    // Modifier that only allows the owner to execute a function
    modifier onlyOwner() {
        require(msg.sender == owner, "This function is only accessible by the owner");
        _;
    }

    // Function to mint NFT 
    function mint(uint256 quantity) external payable onlyOwner {
        _mint(msg.sender, quantity);
    }

    // Override the baseURI function to return the base URL for the NFTs
    function _baseURI() internal view override returns (string memory) {
        return baseUrl;
    }

    // Return the URL for the prompt description
    function promptDescription() external view returns (string memory) {
        return prompt;
    }
}
