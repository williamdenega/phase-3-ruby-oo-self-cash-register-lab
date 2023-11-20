
class CashRegister 

    attr_accessor :total, :title, :price, :items
    attr_reader :discount

    def initialize discount = 0 
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item title, price, quantity = 1
        @prev_total = @total
        @total += price * quantity
        
        #quantity.times do
        #    @items << { title: title, price: price, quantity: quantity }
        #end
        quantity.times do
            @items << title
        end
    end

    def apply_discount 
        if @discount == 0
            return "There is no discount to apply." 
        else
            @total -= (@total * @discount / 100).to_i
            return "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        return @items
    end

    def void_last_transaction 
        @total = @prev_total
        items.pop
    end


end