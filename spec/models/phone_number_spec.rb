require 'rails_helper'

RSpec.describe PhoneNumber, type: :model do
  let(:phone_number) {PhoneNumber.new(number: '3037777777', person_id: 1)}

  it "is valid" do 
    expect(phone_number).to be_valid
  end

  it "is invalid if blank" do  
    phone_number.number = nil
    expect(phone_number).to_not be_valid
  end

  it "must have a reference to a person" do 
    phone_number.person_id = nil
    expect(phone_number).to_not be_valid  
  end

  it "should return the person who owns the number" do 
    expect(phone_number).to respond_to(:person)
  end

  it "is associated with a person" do 
    expect(phone_number).to respond_to(:person)
  end
end
