require 'rails_helper'
RSpec.describe Menu, type: :model do
let(:category) {Category.create(name: 'Side')}
let(:restaurant) {FactoryGirl.create(:restaurant)}
subject { described_class.new(name: "test1",category_id: category.id, restaurant_id: restaurant.id) }

	describe "Validations" do
		it "is valid with all attributes" do
			expect(subject).to be_valid
		end
	end
	it "is not valid without attributes" do
		expect(Menu.new).to_not be_valid
	end

	it "is not valid without a name" do
		subject.name = nil
		expect(subject).to_not be_valid
	end

	it "is not valid without a description" do
		subject.category_id = nil
		expect(subject).to_not be_valid
	end

	it "is not valid without a rating" do
		subject.restaurant_id = nil
		expect(subject).to_not be_valid
	end

end	
