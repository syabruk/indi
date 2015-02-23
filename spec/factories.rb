FactoryGirl.define do
  factory :user do
    name "Vlad"
    login { name.downcase }
    email { "#{login}@example.com" }
  end

  factory :provider do
    title { raw['provider'] }
    user
    uid { raw['uid'] }
    raw { OmniAuth.config.mock_auth[:google] }
  end
end
