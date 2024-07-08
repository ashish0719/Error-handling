# Farmhouse Smart Contract
The Farmhouse smart contract manages the quantities of Wheat and Rice collected from a farm. Basically simple code to explain the working of Require, Revert, Assert

# Features

# Collect Crop: Allows collecting Wheat or Rice in quantities greater than 100 kg.
# View Quantities: Provides functions to view the current quantities of Wheat and Rice stored.
# Require 
The require statement is used to validate conditions before executing further logic in a function. In the collectCrop function:
If quantity is not greater than 100, the transaction will revert, and any state changes made up to that point will be reverted. The error message "Quantity must be greater than 100 kg" is provided .

# Revert
The revert statement is used to revert the transaction and provide a custom error message when specific conditions are not met. In the collectCrop function:
If crop is neither "Wheat" nor "Rice", the transaction will revert with the error message "Only Wheat and Rice are accepted".

# Assert 
The assert statement is used to check for internal errors and invariants that should never occur unless there is a bug in the contract. In the collectCrop function:
