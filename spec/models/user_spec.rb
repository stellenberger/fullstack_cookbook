require 'rails_helper'

RSpec.describe User, type: :model do
  it "can make a new instance of a user" do
    user = User.create(
      email: 'example@example.com', 
      password: 'password', 
      password_confirmation: 'password', 
      first_name: 'John', 
      last_name: 'Smith'
    )
    expect(user).to be_valid
  end

  it 'will not be valid without an email address' do
    user = User.create(
      email: '', 
      password: 'password', 
      password_confirmation: 'password', 
      first_name: 'John', 
      last_name: 'Smith'
    )
    expect(user).to_not be_valid
  end

  it 'will not be valid if passwords dont match' do
    user = User.create(
      email: 'example@example.com', 
      password: 'password', 
      password_confirmation: 'passwor', 
      first_name: 'John', 
      last_name: 'Smith'
    )
    expect(user).to_not be_valid
  end

  it 'first name has to be at least 2 characters long' do
    user = User.create(
      email: 'example@example.com', 
      password: 'password', 
      password_confirmation: 'password', 
      first_name: 'J', 
      last_name: 'Smith'
    )
    expect(user).to_not be_valid
  end

  it 'last name has to be at least 2 characters long' do
    user = User.create(
      email: 'example@example.com', 
      password: 'password', 
      password_confirmation: 'password', 
      first_name: 'John', 
      last_name: 'S'
    )
    expect(user).to_not be_valid
  end
end
