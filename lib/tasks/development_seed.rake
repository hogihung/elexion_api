unless Rails.env.production?

  require "factory_girl"

  namespace :dev do
    desc "Seed development database, maintain consistency"
    task prime: "db:setup" do
      include FactoryGirl::Syntax::Methods

      ## Create the candidates
      create(:trump)
      create(:cruz)
      create(:kasich)
      create(:bush)
      create(:rubio)
      create(:chafee)
      create(:clinton)
      create(:sanders)

      create(:admin_user)
      create(:repub_user)
      create(:democrat_user)
      create(:suspended_user)
    end
  end
end
