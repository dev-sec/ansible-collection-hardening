include_controls 'windows-baseline' do
  # we need to skip the test to ensure we can connect with non-administrator
  # winrm user for our tests
  skip_control 'cis-network-access-2.2.2'
  skip_control 'windows-account-100'
end
