require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid user" do
    user = User.new(email: 'test@example.com', login_id: 'example', password: 'password1234')
    expect(user).to be_valid
  end

  it "is not valid user's email" do
    user = User.new(email: 'test.example.com', login_id: 'example', password: 'password1234')
    expect(user.valid?).to eq false
  end

  it "is not valid user's login_id" do
    user = User.new(email: 'test@example.com', login_id: 'ああああああ', password: 'password1234')
    user.valid?
    expect(user.valid?).to eq false
  end

  it "is not valid user's password" do
    user = User.new(email: 'test@example.com', login_id: 'example', password: 'パスワード')
    user.valid?
    expect(user.valid?).to eq false
  end

  it "is unique user's email" do
    User.create(email: 'test@example.com', login_id: 'example', password: 'password')
    user = User.new(email: 'test@example.com', login_id: 'example1', password: 'password')
    user.valid?
    expect(user.valid?).to eq false
  end

  it "is unique user's login_id" do
    User.create(email: 'test@example.com', login_id: 'example', password: 'password')
    user = User.new(email: 'test1@example.com', login_id: 'example', password: 'password')
    user.valid?
    expect(user.valid?).to eq false
  end
end
