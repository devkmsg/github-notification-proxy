default['github_notification_proxy']['client']['install_dir'] = "/home/#{node['github_notification_proxy']['user']}/github-notification-proxy"

default['github_notification_proxy']['ws_auto_reconnect'] = true

default['github_notification_proxy']['client_log_file'] = 'client.log'
default['github_notification_proxy']['client_log_level'] = 'info'

default['github_notification_proxy']['handlers'] = {}

# HANDLER EXAMPLES:

#default['github_notification_proxy']['handlers']['jira'] = {
#  'match' => '^(\d+)$',
#  'url' => 'https://myjiraserver.local/rest/bitbucket/1.0/repository/$1/sync',
#}
#default['github_notification_proxy']['handlers']['jenkins'] = [
#  {
#    'match' => '^notifyCommit\?([\w\/\.\-%]+)=?$',
#    'url' => [
#      'https://myjenkinsserver.local/git/notifyCommit?url=git@github.com:$1.git',
#      'https://myotherjenkinsserver.local/git/notifyCommit?url=git@github.com:$1.git'
#    ],
#    'method' => 'get'
#  },
#  {
#    'match' => '^my-job/([^\/]+)$',
#    'url' => 'https://myjenkinsserver.local/job/Git-Mirror-Update/build?token=myjenkinsbuildtoken&cause=$1'
#  },
#  {
#    'match' => '^insecure$/',
#    'url' => 'https://selfsignedcert.local/notify',
#    'verify_ssl' => false
#  },
#  {
#    'match' => '^ghprbhook/$',
#    'url' => 'https://myjenkinsserver.local/ghprbhook/'
#  }
#]
#default['github_notification_proxy']['handlers']['crucible'] = {
#  'match' => '^scan/([\w\/\.\-%]+)$',
#  'url' => 'https://mycrucibleserver.local/rest-service-fecru/admin/repositories-v1/$1/scan',
#  'headers' => {'X-Api-Key' => 'mycrucibleapikey'}
#}
