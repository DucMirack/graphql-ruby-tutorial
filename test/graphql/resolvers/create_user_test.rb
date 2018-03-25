require 'test_helper'

class Resolvers::CreateUserTest < ActiveSupport::TestCase
	def perform(args = {})
		Resolvers::CreateUser.new.call(nil, args, nil)
	end

	test 'create new user' do 
		user = perform(
			name: 'Test user',
			authProvider: {
				email: {
					email: "test@test.fr",
					password: "12345678"
				}
			}
		)

		assert user.persisted?
		assert_equal user.name, 'Test user' 
		assert_equal user.email, 'test@test.fr' 
	end
end