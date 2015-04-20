require 'rails_helper'

feature 'user inputs email address' do 
  let(:email_address) {EmailAddress.new(address: "wwww.g@hotmail.com")}

  scenario 'that is valid' do 
    expect(email_address).to be_valid
  end

  scenario 'that is invalid' do 
    email_address.address = nil
    expect(email_address).to_not be_valid
  end
end
