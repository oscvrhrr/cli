# A software that can be used inside a robot eg.[optimus](https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Tesla-optimus-bot-gen-2-scaled_%28cropped%29.jpg/1200px-Tesla-optimus-bot-gen-2-scaled_%28cropped%29.jpg) to make coffee 

This software can make 4 different beverages with 3 options of milk. It can determine the temperature options based on the beverage ordered


### Steps to run project
I will be simulating an order and going through the flow of placing an order.

1. run program - ruby app.rb

* barista will display a menu and ask for your order
```
Our menu:
    Coffee: Cappuccino, Latte, Espresso, Americano
    Milk: Regular, Oat, Almond

Hello! What coffee can I get you?
```

2. Type in "latte"
```
Ok a Latte..
Would you like regular, oatmilk, or almondmilk?
```

3. Type in "oatmilk"
```
Would you like your latte iced or hot?
```

4. Type in "hot"
```
Your order is a hot Latte with Oatmilk milk. Does your order look correct?
```

5. You can type in "yes" or "no". If you have a typo in eg."nno" barista will ask again.

```
Sorry, what did you mean?..

Your order is a hot Latte with Oatmilk milk. Does your order look correct?
```
6.  Type in "yes"

```
Ok your order will be up in 3 mins..
```






- Ruby version: `3.2.1`
