require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid user" do
    user = User.new(email: 'test@example.com', login_id: 'example', password: 'password1234')
    expect(user).to be_valid
  end

  it "is not valid user's email" do
    user = User.new(email: 'test.example.com', login_id: 'example', password: 'password1234')
    user.valid?
    expect(user.errors.messages[:email]).to include('は不正な値です')
  end

  it "is not valid user's login_id" do
    user = User.new(email: 'test@example.com', login_id: 'ああああああ', password: 'password1234')
    user.valid?
    expect(user.errors.messages[:login_id]).to include('は不正な値です')
  end

  it "is not valid user's password" do
    user = User.new(email: 'test@example.com', login_id: 'example', password: 'パスワード')
    user.valid?
    expect(user.errors.messages[:password]).to include('は不正な値です')
  end
end
