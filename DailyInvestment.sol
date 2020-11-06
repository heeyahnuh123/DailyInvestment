pragma solidity ^0.5.0;



contract DailyInvestment{
mapping(address=>uint) balances;

function deposit(uint256 _amount) public payable returns(bool){
require(msg.value== _amount, "amount is not correct");
balances[msg.sender]+=_amount;
return true;
}

function withdraw(uint _amount) public payable returns(bool){
require(balances[msg.sender]>=_amount,"Insufficient funds");
msg.sender.transfer(_amount);
balances[msg.sender] -=_amount;
return true;
}

function checkBalance(address _mine) public view returns(uint256){
    balances[_mine];
} 

uint rewardTime = 1 days; 

function checkTime() public view returns (bool){
(now>= rewardTime);



}
}
