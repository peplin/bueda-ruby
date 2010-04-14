require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))

VERSION_LIST = [Bueda::Version::MAJOR, Bueda::Version::MINOR, Bueda::Version::REVISION]

EXPECTED_VERSION = VERSION_LIST.join('.')
EXPECTED_NAME = VERSION_LIST.join('_')

describe Bueda::Version, ".to_version" do
  it "should return #{EXPECTED_VERSION}" do
    Bueda::Version.to_version.should eql(EXPECTED_VERSION)
  end
end

describe Bueda::Version, ".to_name" do
  it "should return #{EXPECTED_NAME}" do
    Bueda::Version.to_name.should eql(EXPECTED_NAME)
  end
end
