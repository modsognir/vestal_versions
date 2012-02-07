module VestalVersions
  # Ties into the existing ActiveRecord::Base#reload method to ensure that version information
  # is properly reset.
  module Reload
    extend ActiveSupport::Concern

    # Overrides ActiveRecord::Base#reload, resetting the instance-variable-cached version number
    # before performing the original +reload+ method.
    def reload(*args)
      reset_version
      super
    end
  end
end
