require 'test_helper'

class Resolvers::CreateLink < ActiveSupport::TestCase
  def perform(args = {})
    Resolvers::CreateLink.new.call(nil, args, {})
  end

  test 'creating new link' do
    link = perform({description: "Description", url: "http://ekylibre.com"})

    assert link.persisted?
    assert_equal link.description, "Description"
    assert_equal link.url , "http://ekylibre.com"
  end
end
