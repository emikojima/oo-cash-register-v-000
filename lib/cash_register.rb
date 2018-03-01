require'pry'
class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items 


  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @items = []
  end 
  
  
  def add_item(title, price, quantity = 1)
<<<<<<< HEAD
  
    @total += (quantity*price) 
    quantity.times do 
    @items << title
    end 
      self.last_transaction = (quantity*price) 
  end 
=======
    self.last_transaction = (quantity*price) 
    @total += (quantity*price) 
    @items = titles 
    items = {}
    items[:title] = title 
    items[:price] = price 
    items[:quantity] = quantity
    @cart << items 
   end 
>>>>>>> 953240aa448d1dd5dfc3b8764cef42adec8fa52a
     
  def apply_discount
    if @discount > 0
    @total -= (@total.to_f*discount.to_f/100)
    "After the discount, the total comes to $#{@total.to_i}."
    else
    "There is no discount to apply."
    end
  end 
  
<<<<<<< HEAD
=======

#def items 
  # @cart.map{|i| i[:title]* i[:quantity]}
   #binding.pry 
 #end 
  
>>>>>>> 953240aa448d1dd5dfc3b8764cef42adec8fa52a
  def void_last_transaction
   @total -= @last_transaction
  end
end