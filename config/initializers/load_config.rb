require "erb"
require "yaml"
yaml = Pathname.new("#{Rails.root}/config/config_full.yml")
config = YAML.load(ERB.new(yaml.read).result(binding))
APP_CONFIG = config