# CLM-0 : Claim Logic Module for collecting xDAI

This contract can be used in a limited scenario where you want to collect your xDai revenues from the M3tering protocol, to a specific address without any additional logic. 

**How it works:**
* The contract retrieves the recipient address from the calldata bytes.
* The contract then proceeds to forward the received xDai  to the recipient address.
