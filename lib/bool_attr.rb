class Bool_attr

	def bool_attr_writer(method_name)
		self.class.send(:define_method,method_name){instance_variable_set("@#{ method_name.slice(0..-2) }") }
	end

	def bool_attr_reader(method_name)
		self.class.send(:define_method,method_name){instance_variable_get("@#{ method_name.slice(0..-2) }") }
	end

	def bool_attr_accessor(method_name)
		bool_attr_reader(method_name)
		bool_attr_reader(method_name)
	end
	
end

# bool_attr_reader(:has_bike?)

# -->

# def has_bike?
# 	@has_bike
# end

