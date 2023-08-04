# POLY-PROOF-Module-1
Polygon-Advanced-Module-1 This is the first project in Polygon-Advance, in this project, I was tasked to deploy an NFT collection on the Ethereum blockchain, Map the collection to Polygon, and Transfer assets over via the Polygon Bridge.

Download the codes by downloading the entire repository which will give you access to other contents of the repository. Navigate to the Poly_Proof project directory, run:

1. 'npm install'
Run- the below command to deploy the contract.

2. 'npx hardhat run scripts/deploy.js --network goerli' NOTE: After deploying the address will generate. So, copy that address into contractAddress.js (stored in metadata folder) and also in batchMint.js (stored in scripts folder).
Run the below command next.

3. 'npx hardhat run scripts/batchMint.js --network goerli' The script will mint the specified number of NFTs and assign them to your address. You can then check the NFTs in your MetaMask wallet.
Run the following commands to approve and deposit the minted NFTs from Ethereum to the Polygon Mumbai network using the FxPortal Bridge:

4. 'npx hardhat run scripts/approveDeposit.js --network goerli' This command will approve and deposit the minted NFTs from Ethereum to the Polygon Mumbai network using the FxPortal Bridge.
