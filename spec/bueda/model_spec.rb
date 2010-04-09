require File.join(File.dirname(__FILE__), '..', 'spec_helper')

module Test
  class Model
    include Bueda::ModelMixin
  end
end

describe Bueda::Tags, "#enrich" do
  before(:each) do
    @bueda = client_context
    @tags = Bueda::Tags.new()
    @enriched_tags = Bueda::EnrichedTags.new()
  end
  
  it "should invoke #enriched(:tags) on client context" do
    @bueda.should_receive(:enriched).with(@tags).and_return(@enriched_tags)
    @user.befriend(@friend)
  end
  
  after(:each) do
    nilize(@bueda, @tags, @enriched_tags)
  end
end

describe Bueda::Tags, "#find_categories" do
end

describe Bueda::Tags, "#find_concepts" do
end

describe Bueda::Tags, "#split" do
end

describe Bueda::Tags, "#to_s" do
  before(:each) do
    @text = 'Aloha'
    @status = Bueda::Status.new(:text => @text)
  end
  
  it "should render text attribute" do
    @status.to_s.should be(@text)
  end
  
  after(:each) do
    nilize(@text, @status)
  end
end

describe Bueda::EnrichedTag, "#input" do
end

describe Bueda::EnrichedTag, "#split" do
end

describe Bueda::EnrichedTag, "#canonical" do
end

describe Bueda::EnrichedTag, "#categories" do
end

describe Bueda::EnrichedTag, "#concepts" do
end

describe Bueda::Category, "#name" do
end

describe Bueda::Category, "#confidence" do
end

describe Bueda::SemanticConcept, "#types" do
end

describe Bueda::SemanticConcept, "#id" do
end

describe Bueda::Client, "" do
end
