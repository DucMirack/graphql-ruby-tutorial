Types::AuthProviderEmailInput = GraphQL::InputObjectType.define do 
	name 'AUTH_PROVIDER_EMAIL_'

	argument :email, !types.String
	argument :password, !types.String
end