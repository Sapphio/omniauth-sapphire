require 'spec_helper'

describe OmniAuth::Strategies::Opengem do

  subject do
    OmniAuth::Strategies::Opengem.new({})
  end

  context "general" do
    it "should be called opengem" do
      subject.options.name.should eq('opengem')
    end
  end

  context "endpoints" do
    it "has correct site" do
      subject.options.client_options.site.should eq("https://accounts.opengem.org")
    end

    it "has correct authorize_url" do
      subject.options.client_options.authorize_url.should eq("https://accounts.opengem.org/oauth/authenticate")
    end

    it "has correct token_url" do
      subject.options.client_options.token_url.should eq("https://accounts.opengem.org/oauth/access_token")
    end
  end

end