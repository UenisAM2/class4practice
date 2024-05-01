# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇


# create new hash with {names, balance}
    Mainpage = 
    [ "ben", "brian", "evan", "anthony"]

# for each array in hash, calculate 
# (1) sum all values to user xxx and
# (2) delete all values sent by xxx


  for name in Mainpage
    total_balance = 0

    for row in blockchain
      if row["to_user"] == name
        total_balance = total_balance + row["amount"]  
      end
      
      if row["from_user"] == name
        total_balance = total_balance - row["amount"]  
      end  

    end

  puts "#{name}'s KelloggCoin balance is #{total_balance}"
      # puts "#{name}"

  end


# print final message for all array

# for user in users
#   put "Anthony's KelloggCoin balance is 2650"
