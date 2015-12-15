
class Customer
   @@no_of_customers=0
   def initialize(id, name, addr, order_total)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
      @order_sum = order_total
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
   def total_no_of_customers()
      @@no_of_customers += 1
      puts "Total number of customers: #@@no_of_customers"
   end
   #def order_details(id, order_total)
    # @c_id = id
     #@order_sum = order_total
   #end
   def display_order()
      puts "Customer id #@cust_id"
      puts "Customer Order Total #@order_sum"
   end

end

# Create Objects
#cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
#cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

store_register_sale = Customer.new("2", "Poul", "New Empire road, Khandala", "1000")

# Call Methods


# Call Order
store_register_sale.display_order()
