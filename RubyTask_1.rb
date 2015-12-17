#Full Name: LAWAL, Muideen Adekunle
#Course: Software Engineering Methodology
#Ruby Assignment: Task 1 (Accounting System Prototype)

class Customer
	def initialize(customer_first_name, customer_last_name)
		@customer_first_name = customer_first_name
		@customer_last_name = customer_last_name
	end
	def getCustomerName()
		return  @customer_first_name + " " + @customer_last_name 
	end
end

class Order
	def initialize(customer, value)
		@customer = customer
		@value = value
	end
	def getInfo()
		return @customer.getCustomerName + " spent " + @value.to_s
	end
	def getCustomer()
		return @customer
	end
	def getValue()
		return @value
	end
end

class Shop
	$sales = []
	
	def register_sale(sale)
		$sales.push(sale)
	end
	
	def getAllSales()
		return $sales
	end
	
	def getSalesPerCustomer(customer)
		@sum = 0
		@customerName = customer.getCustomerName
		$sales.each do |item|
			if item.getCustomer == customer
				@sum += item.getValue
			else
				#NOTHING
			end
		end
		return "Customer " + @customerName + " spent " + @sum.to_s + "."
	end

	def getCustomers()
		@customers = []
		###return array of cutomers
	end
end	

#--
#Input Stream
#--
first_customer = Customer.new("LAWAL", "Muideen Adekunle")
first_sale = Order.new(first_customer, 700)
second_sale = Order.new(first_customer, 350)

second_customer = Customer.new("Omolewa", "Modupe")
first_sale_1 = Order.new(second_customer, 150)
second_sale_1 = Order.new(second_customer, 45)

store1 = Shop.new
store1.register_sale(first_sale)
store1.register_sale(second_sale)
store1.register_sale(first_sale_1)
store1.register_sale(second_sale_1)
store1.register_sale(first_sale_2)
store1.register_sale(second_sale_2)

array  = store1.getAllSales

puts
puts ">>>>> List of SALES <<<<<<"
puts "====================================="
array.each do |item|
	puts item.getInfo
end
puts
puts ">>>>> Summary per customer <<<<<<"
puts "======================================"
puts store1.getSalesPerCustomer(first_customer)
puts store1.getSalesPerCustomer(second_customer)
