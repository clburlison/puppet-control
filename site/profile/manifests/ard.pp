# Setup ard remote management settings
class profile::ard (
  $admin_users = ['clburlison'],
){
  include osx_ard
}
