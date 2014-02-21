require 'spec_helper'

describe Faker::Team do 
	describe '.name' do
		it 'returns a valid string' do
			Faker::Team.name.should match(/^\w+(\s\w+)*$/)
		end
	end
end