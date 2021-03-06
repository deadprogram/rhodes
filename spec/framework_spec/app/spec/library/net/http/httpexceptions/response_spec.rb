require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/../../../../spec_helper'
require 'net/http'
require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/fixtures/classes'

describe "Net::HTTPExceptions#response" do
  it "returns self's response" do
    exception = NetHTTPExceptionsSpecs::Simple.new("error message", "a http response")
    exception.response.should == "a http response"
  end
end
