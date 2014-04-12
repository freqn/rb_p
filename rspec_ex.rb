require 'spec_helper'

describe Thing do 
	let(:thing) {Thing.new}

	it "should return chunky bacon" do 
		thing.value = "chunky bacon"
		expect(thing).to_eq "chunky bacon"
	end
end

class Thing
	def value=(string)
		self.value = string
	end

	def to_s
		value
	end
end
