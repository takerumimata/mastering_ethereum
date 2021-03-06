pragma solidity ^0.4.19;

// 最初のコントラクト
contract Faucet {

    address owner;

    // コントラクトの初期化
    constructor() {
        owner = msg.sender;
    }

    // 要求する人にetherを与える
    function withdraw(uint withdraw_amount) public {

        // 引出額を制限する
        require(withdraw_amount <= 10000000000000);

        // リクエストしたアドレスにその全額のetherを送金する
        msg.sender.transfer(withdraw_amount);
    }

    // 入金額を受け入れる
    function () public payable {}  //default関数、またはcallback関数
    // Contractが呼ばれた時に、メソッド等の指定がなかった時に走る
    function destroy() public {
        require(msg.sender == owner);
        selfdestruct(owner);
    }
}