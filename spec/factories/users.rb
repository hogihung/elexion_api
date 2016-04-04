FactoryGirl.define do
  factory :user do
    name "MyString"
    email "MyString"
    role "MyString"
    status "MyString"

    factory :admin_user do
      name "Don Ho"
      email "don@administrators.com"
      role "admin"
      status "active"
    end

    factory :repub_user do
      name "Paul Ryan"
      email "paul_ryan@whitehouse.gov"
      role "republican_editor"
      status "active"
    end

    factory :democrat_user do
      name "Debbie Schultz"
      email "debbie@dallas.com"
      role "democrat_editor"
      status "active"
    end

    factory :suspended_user do
      name "Jane Doey"
      email "jane@the_white_house.com"
      role "democrat_editor"
      status "suspended"
    end
  end
end
