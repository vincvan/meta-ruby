require 'bool_attr'

describe Bool_attr do 
	let(:attr) { Bool_attr.new }

	it "has a method bool_attr_reader" do 
		expect(attr.bool_attr_reader(:has_bike?)).not_to be nil
	end

	it "creates a method which returns an instance variable with the same name" do
		attr.has_bike? == "bla"
		expect(attr.has_bike?).not_to eq "bla"
	end
end