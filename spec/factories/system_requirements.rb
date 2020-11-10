FactoryBot.define do
  factory :system_requirement do
    sequence(:name) { |n| "Basic #{n}" }
    operational_system { Faker::Computer.os }
    storage { "500GB" }
    processor { "AMS Ryzen 7" }
    memory { "8GB" }
    video_board { "GeForce X" }
  end
end
