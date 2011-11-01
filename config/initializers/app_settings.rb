app_file = 'local_settings.yml'
app_file = 'local_settings_test.yml' if ENV['RAILS_ENV']=='test'
APP_SETTINGS = YAML.load_file("#{RAILS_ROOT}/config/#{app_file}")

KANNEL_DELIVERED_TO_PHONE = 1
KANNEL_NOT_DELIVERED = 2
KANNEL_QUEUED_ON_SMSC = 4
KANNEL_DELIVERED_TO_SMSC = 8
KANNEL_NOT_DELIVERED_TO_SMSC = 16
KANNEL_SUCCESS = [KANNEL_DELIVERED_TO_PHONE,KANNEL_DELIVERED_TO_SMSC]

KANNEL_CONFIG_SERVER = "127.0.0.1"
KANNEL_CONFIG_PORT = "13013"
KANNEL_CONFIG_USERNAME = APP_SETTINGS[:kannel][:username]
KANNEL_CONFIG_PASSWORD = APP_SETTINGS[:kannel][:password] # note: this is actually the admin password
KANNEL_CONFIG_DLR_URL = "http://127.0.0.1/kannel/deliveryreport"
KANNEL_CONFIG_DLR_MASK = "0"
KANNEL_CONFIG_RECEIVE_URL = "http://127.0.0.1/kannel/receive"
KANNEL_CONFIG_ADMIN_PORT = "13000"

CLICKATELL_API_ID   = APP_SETTINGS[:clickatell][:api_id]
CLICKATELL_USERNAME = APP_SETTINGS[:clickatell][:username]
CLICKATELL_PASSWORD = APP_SETTINGS[:clickatell][:password]
CLICKATELL_FROM = APP_SETTINGS[:clickatell][:from]
