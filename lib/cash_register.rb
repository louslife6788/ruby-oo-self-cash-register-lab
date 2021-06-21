class CashRegister
    attr_accessor :total, :discount, :items, :last

    
    def initialize(discount = 0 )
        @total = 0
        @discount = discount
        @items = []
        
    end


    def add_item(item, price, quantity = 1 )
        @total += price * quantity
        quantity.times do  @items << item 
        
        end
         @last = price * quantity
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            x =  @discount.to_f/100 * @total
            @total = total - x
            return "After the discount, the total comes to $#{@total.to_i}."
        end
     end

     def  void_last_transaction
        @total = @total - @last
        
        
     end


end
