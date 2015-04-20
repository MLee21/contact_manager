require 'rails_helper'

feature 'user inputs email address' do 
  let(:email_address) {EmailAddress.new(address: "wwww.g@hotmail.com", person_id: 1)}

  scenario 'that is valid' do 
    expect(email_address).to be_valid
  end

  scenario 'that is invalid without an address' do 
    email_address.address = nil
    expect(email_address).to_not be_valid
  end

  scenario 'that is invalid without a person id' do 
    email_address.person_id = nil
    expect(email_address).to_not be_valid
  end
end

