require 'rails_helper'

describe 'ログインする', type: :system, js: true do
  describe '正常にログインをする' do
    before do 
      user = FactoryBot.create(:user)
    end

    it 'login' do
      visit login_path
      fill_in 'ログインID', with: 'test01'
      fill_in 'パスワード', with: 'password01'
      click_button 'ログイン'
      expect(page).to have_content 'ログインしました'
    end
  end
end
