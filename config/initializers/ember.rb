module EmberCLI
  class App
    EMBER_CLI_VERSION = "~> 0.2"
  end
end

EmberCLI.configure do |c|
  c.app :admin, path: Rails.root.join('admin').to_s
end
