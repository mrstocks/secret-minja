require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require 'ruby/shared/loader_sharedspec'
require 'ruby/shared/rails/analytics_logging_extensions_sharedspec'

module PhusionPassenger

describe "Rack loader with Rails 3.1" do
	include LoaderSpecHelper

	before :each do
		@stub = register_stub(RackStub.new("rails3.1"))
	end

	def start(options = {})
		@preloader = Preloader.new(["ruby", "#{PhusionPassenger.helper_scripts_dir}/rack-preloader.rb"], @stub.app_root)
		result = @preloader.start(options)
		if result[:status] == "Ready"
			@loader = @preloader.spawn(options)
			return @loader.start(options)
		else
			return result
		end
	end

	def rails_version
		return "3.1"
	end

	include_examples "analytics logging extensions for Rails"
end

end # module PhusionPassenger
