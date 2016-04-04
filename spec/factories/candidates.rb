FactoryGirl.define do
  factory :candidate do
    first_name         "John"
    last_name          "Carter"
    party              "Independent"
    delegate_count     101
    popular_vote_count 100_000_000
    status             "active"

    factory :trump do
      first_name         "Donald"
      last_name          "Trump"
      party              "Republican"
      delegate_count     736
      popular_vote_count 7_811_245
      status             "active"
    end

    factory :kasich do
      first_name         "John"
      last_name          "Kasich"
      party              "Republican"
      delegate_count     143
      popular_vote_count 2_805_211
      status             "active"
    end

    factory :cruz do
      first_name         "Ted"
      last_name          "Cruz"
      party              "Republican"
      delegate_count     463
      popular_vote_count 5_732_220
      status             "active"
    end

    factory :bush do
      first_name         "Jeb"
      last_name          "Bush"
      party              "Republican"
      delegate_count     10
      popular_vote_count 10_000
      status             "dropped-out"
    end

    factory :rubio do
      first_name         "Marco"
      last_name          "Rubio"
      party              "Republican"
      delegate_count     171
      popular_vote_count 3_435_009
      status             "suspended"
    end

    factory :clinton do
      first_name         "Hillary"
      last_name          "Clinton"
      party              "Democrat"
      delegate_count     1712
      popular_vote_count 8_924_821
      status             "active"
    end

    factory :sanders do
      first_name         "Bernie"
      last_name          "Sanders"
      party              "Democrat"
      delegate_count     1011
      popular_vote_count 6_397_980
      status             "active"
    end

    factory :chafee do
      first_name         "Lincoln"
      last_name          "Chafee"
      party              "Democrat"
      delegate_count     0
      popular_vote_count 0
      status             "dropped-out"
    end

  end
end
