FactoryGirl.define do
  factory :book do
    title 'A Hero of Our Time'
    cover Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'image.png'), 'image/png') 
    genre 'Novel'
    page_count 208
  end
end
