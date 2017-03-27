class TodoList

	def initialize(list)  # this is called the constructor 
		@list = list 
	end 

	def get_items 
		@list  
	end

	def add_item(item)
		@list << item 
	end 

	def delete_item(delete)
		@list.delete(delete)
	end 

	def get_item(index)
		@list.at(index)
	end 
end 

