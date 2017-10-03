require 'rails_helper'

RSpec.describe Restaurant, type: :model do
subject { described_class.new(name: "test1",description: "desc", rating: 2.4, address: "address") }

	describe "Validations" do
		it "is valid with all attributes" do
			expect(subject).to be_valid
			puts "valid object"
		end
	end
	it "is not valid without attributes" do
		expect(Restaurant.new).to_not be_valid
	end

	it "is not valid without a name" do
		subject.name = nil
		expect(subject).to_not be_valid
	end

	it "is not valid without a description" do
		subject.description = nil
		expect(subject).to_not be_valid
	end

	it "is not valid without a rating" do
		subject.rating = nil
		expect(subject).to_not be_valid
	end
	it "is not valid having rating of type string" do
		subject.rating = "4.0"
		expect(subject).to be_valid
	end
end	
