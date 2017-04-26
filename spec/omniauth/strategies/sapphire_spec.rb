require 'spec_helper'

describe OmniAuth::Strategies::Sapphire do

  subject do
    OmniAuth::Strategies::Sapphire.new({})
  end

  context "general" do
    it "should be called sapphire" do
      subject.options.name.should eq('sapphire')
    end
  end

  context "endpoints" do
    it "has correct site" do
      subject.options.client_options.site.should eq("https://accounts.sapphire.moe")
    end

    it "has correct authorize_url" do
      subject.options.client_options.authorize_url.should eq("https://accounts.sapphire.moe/oauth/authenticate")
    end

    it "has correct token_url" do
      subject.options.client_options.token_url.should eq("https://accounts.sapphire.moe/oauth/access_token")
    end
  end

end
