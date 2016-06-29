require 'rails_helper'
require 'user'

describe User do
  before :each do
    @user = User.new
  end

  describe '#new' do
    it 'it can be instantiated' do
      @user.should(be_instance_of(User))
    end
  end

  describe '#save' do
    it 'is saved with required attributes' do
      user =  User.new(:first_name =>'Atul', :last_name => 'Shimpi',:email => 'shimpiatul@hotmail.com', :role_id => 1)
      user.save
      puts "Count #{User.all.count}"
      expect(User.all.count ).to(eq(1))
    end
  end
end