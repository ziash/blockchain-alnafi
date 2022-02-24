/* 
Assignment: 39.6 Lab Assignment
Student: Zeeshan Zia https://www.linkedin.com/in/ziazeeshan/
+++ Request to Farhan Sb: Kindly add me to your linkedIn +++
*/

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract studentZeeshanZia {
    uint private senderMsisdn;      // Sender Mobile Number - positive int only
    uint private receiverMsisdn;    // Receiver Mobile Number - positive int only
    uint private amountInPkr;       // amount to transfer - positive int only
    string private senderName;      // Sender name - string 
    string private receiverName;    // Receiver name - string
    bool approvedBySender;          // Sender approval - boolean

    function SendMoneyTransaction(uint _sender, uint _receiver, uint _amount) public {
        senderMsisdn = _sender;
        receiverMsisdn = _receiver;
        amountInPkr = _amount;
    }

    function SendMoneyTransaction(uint _sender, uint _receiver, uint _amount, uint _senderMsisdn, uint _receiverMsisdn) public {
        senderMsisdn = _sender;
        receiverMsisdn = _receiver;
        amountInPkr = _amount;
        senderMsisdn = _senderMsisdn;
        receiverMsisdn = _receiverMsisdn;
    }

    function ReadMoneyTransaction() public view returns(uint,uint,uint) {
        return(senderMsisdn,receiverMsisdn,amountInPkr);
    }

    
}