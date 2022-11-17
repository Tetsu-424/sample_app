# メインのサンプルユーザーを1人作成する
User.create!(name:  "Hisoka morrow",
             email: "hisoka@exhunter.com",
             password:              "hahaha",
             password_confirmation: "hahaha",
             admin: true)

# 追加のユーザーをまとめて生成する
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end