# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(login_id: 'testid1', password: 'password1', email: 'testid1@example.com')
User.find(1).create_profile(nickname: 'テスト１',selfintro: '25歳です。よろしく')
User.find(1).posts.create(title: 'はじめまして', post: 'ブログはじめました', created_at: Date.today - 8.days)
User.find(1).posts.create(title: '寒いですね', post: '最近寒いですね。長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト')

User.create(login_id: 'testid2', password: 'password2', email: 'testid2@example.com')
User.find(2).create_profile(nickname: 'テスト２',selfintro: 'よろしくお願いします。')
User.find(2).posts.create(title: '自己紹介的なもの', post: 'ブログはじめました。私について知ってほしいです。', created_at: Date.today - 10.days)
User.find(2).posts.create(title: '私の趣味について', post: '今日は私の趣味である読書について語ります。。長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト')

User.create(login_id: 'testid3', password: 'password3', email: 'testid3@example.com')
User.find(3).create_profile(nickname: 'テスト３',selfintro: 'とうとうブログをはじめました！よろしくですー',  created_at: Date.today - 1.week)
User.find(3).posts.create(title: 'こんにちわ！', post: 'ブログはじめました')
User.find(3).posts.create(title: 'スポーツ観戦してきた！', post: 'サッカー見に行ってきたよ！。長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト長文テスト')

