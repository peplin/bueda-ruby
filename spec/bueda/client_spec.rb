require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))

describe Bueda::Client do
  before(:each) do
    @client = Bueda::Client.new("JGQYtV6tbFHGOL6BSwYcZyHMO9MMZUC9Ev1Ihg")
    @tags = ["porsche", "car", "sports", "awesome"]
  end
  
  describe "#enriched" do
    it "should return a hash" do
      @client.enriched(@tags).should be_instance_of(Hash)
    end
  end

  describe "#categories" do
    it "should return a hash" do
      @client.categories(@tags).should be_instance_of(Hash)
    end
  end

  describe "#concepts" do
    it "should return a hash" do
      @client.concepts(@tags).should be_instance_of(Hash)
    end
  end

  describe "#split" do
    it "should return a hash" do
      @client.split(@tags).should be_instance_of(Hash)
    end
  end
end
