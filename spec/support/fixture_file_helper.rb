module FixtureFileHelper
  def fixture_file(filename)
    Rails.root.join('spec', 'fixtures', filename).open
  end
end

RSpec.configuration.include FixtureFileHelper
