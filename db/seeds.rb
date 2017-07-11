admin = User.new
admin.username = 'admin'
admin.email = 'admin@email.com'
admin.password = 'xxxxxx'
admin.admin = true
admin.save!

Membership.destroy_all

membership_list = [
  [ "Full Membership", "Full studio members will receive their own personal key for 24/7 acccess, appealing to early birds, night owls, and printmaking obsessed artists alike. Full memberships must be renewed after one year.", "black and colored inks, solvent, newsprint, acid baths for copper etching, and all printing presses", 100, "month"],
  [ "Rental Member", "Rental members can access the studio on any given day between the hours of 12pm - 5pm. Rental membership comes with a studio tour and rental day one.", "black ink, solvent, newsprint, acid baths for copper etching, and all printing presses", 40, "day"],
  [ "Five Visit Pass", "Pass members can access the studio up to five times with studio access during business hours only. Pass memberships expire after one year.", "black ink, solvent, newsprint, acid baths for copper etching, and all printing presses", 70, "flat fee"]
]

membership_list.each do | membership_type, description, tools, cost, cost_rate |
  Membership.create( membership_type: membership_type, description: description, tools: tools, cost: cost, cost_rate: cost_rate )
end
