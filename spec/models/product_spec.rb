require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before(:each) do
      @category = Category.create(:name=>'Electronics')
      @category.save
    end

    after(:each) do
      @product.save
      puts @product.errors.full_messages
    end

    context "All feilds saved" do
      after(:each) do
        expect(@product).to be_valid
      end

      describe "Valid input" do
        it "should save " do
          @product = Product.create(:name=>'Hat', :price=>10.89, :quantity=>100, :category=>@category)
        end
      end
    end

    context "all product validations" do
      after(:each) do
        expect(@product).to_not be_valid
      end

      describe '#name' do
        it "should validate_presence_of name " do
          # @product = Product.create(:name=>'Hat', :price=>10.89, :quantity=>100, :category=>@category)
          @product = Product.create(:price=>10.89, :quantity=>100, :category=>@category)
        end
      end

      describe '#price' do
        it "should validate_presence_of price " do
          @product = Product.create(:name=>'Hat', :quantity=>100, :category=>@category)
        end
      end

      describe '#quantity' do
        it "should validate_presence_of quantity " do
          @product = Product.create(:name=>'Hat', :price=>10.89, :category=>@category)
        end
      end

      describe '#category' do
        it "should validate_presence_of category " do
          @product = Product.create(:name=>'Hat', :price=>10.89, :quantity=>100)
        end
      end
    end

  end
end
