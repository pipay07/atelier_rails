include SeedHelper
User.destroy_all
parse_json('db/users.json').each do |data|
	@user = User.new
	@user.name = data["profile"]["first_name"]
	@user.pseudo = data["name"]
	@user.email = data["profile"]["email"]
	@user.admin = data['is_admin']
	@user.save
end