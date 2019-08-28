var mysql = require("mysql");
var inquirer = require("inquirer");
var newstock = 0;
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Racami2019!",
  database: "bamazon"
});


inquirer.prompt([

    {
      type: "input",
      name: "id",
      message: "What product id?"
    },
    {
        type: "input",
        name: "amount",
        message: "how much are you buying?"
    },
    
    
]).then(function(user) {
          connection.query("SELECT * from products where item_id = '"+user.id+"'", function(err,res) {
            if (err) throw err;
            //console.log(res);
            for (i = 0; i < res.length; i++) { 
                console.log(res[i].item_id+"=============================================================");
                console.log(res[i].product_name);
                //console.log(res[i].stock_quantity);
                console.log("Purchase Attempt Amount: "+user.amount+"\n");
                console.log("\n\nChecking stock...\n=============================================================\n\n");
                if (res[i].stock_quantity>user.amount){
                    //console.log("in the if now....");
                    newstock= res[i].stock_quantity - user.amount;
                    //console.log(newstock);
                    buying();
                     }
                    else {
                        console.log("Sorry, we do not have that much in stock.")
                        connection.end();
                    }
            }
            // connection.end();
            function buying() {
                var query = connection.query(
                            "UPDATE products SET ? WHERE ?",
                            [
                                {
                                    stock_quantity: newstock,
                                    
                                },
                                {
                                    item_id: user.id
                                }
                            ]
                            )
                            var totalCost = user.amount * res[i].price;
                        console.log("Congratulaions on your purchase of "+user.amount+" "+res[i].product_name+" from our "+res[i].department_name+" department, this will be a total cost of $"+totalCost);
                        connection.end();
                    }
                
});
});
