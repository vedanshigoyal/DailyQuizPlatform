# Daily Quiz Platform - Move Smart Contract

## Overview
This is a simple Move smart contract for a **Daily Quiz Platform** on the Aptos blockchain. The contract allows an admin to set a quiz with a question and an answer, and users can submit their answers to check if they are correct.

## Features
- **Set Daily Quiz**: An admin can set a quiz by providing a question and its correct answer.
- **Check Answer**: Users can submit an answer, and the contract will validate whether it matches the correct answer.

## Functions

### `set_quiz(admin: &signer, question: String, answer: String)`
- Allows an admin to set the daily quiz.
- Stores the quiz question and the correct answer on-chain.
- The `admin` account stores the quiz data.

### `check_answer(user: &signer, quiz_owner: address, submitted_answer: String) -> bool`
- Allows a user to check if their submitted answer is correct.
- Compares the submitted answer with the stored correct answer.
- Returns `true` if the answer is correct, otherwise `false`.

## Usage
1. **Deploy the contract** on the Aptos blockchain.
2. **Call `set_quiz`** to set the daily question and answer.
3. **Users call `check_answer`** with their response to see if it matches the correct answer.

## Prerequisites
- Aptos CLI installed
- A funded Aptos account
- Basic knowledge of Move programming

## Example
```move
// Setting a quiz (admin action)
set_quiz(&admin_signer, "What is the capital of France?", "Paris");

// Checking the answer (user action)
let result = check_answer(&user_signer, admin_address, "Paris"); // returns true
```

Contract Address:

0x9d23784d0a2d858a71540dba91ed7c6b0a24ce03a3b5e8b27a9f2cad517d0989

![image](https://github.com/user-attachments/assets/1f857971-66f9-498b-b9ed-364593591eaa)
