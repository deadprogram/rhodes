describe :net_ftp_request_get, :shared => true do
  before(:all) do
    NetHTTPSpecs.start_server
  end
  
  after(:all) do
    NetHTTPSpecs.stop_server
  end
  
  before(:each) do
    @http = Net::HTTP.start("localhost", 3333)
  end
  
  describe "when passed no block" do
    it "sends a GET request to the passed path and returns the response" do
      response = @http.send(@method, "/request")
      response.body.should == "Request type: GET"
    end
    
    it "returns a Net::HTTPResponse object" do
      response = @http.send(@method, "/request")
      response.should be_kind_of(Net::HTTPResponse)
    end
  end
  
  describe "when passed a block" do
    it "sends a GET request to the passed path and returns the response" do
      response = @http.send(@method, "/request") {}
      response.body.should == "Request type: GET"
    end
    
    it "yields the response to the passed block" do
      yielded = false
      @http.send(@method, "/request") do |response|
        response.body.should == "Request type: GET"
      end
      yielded = true
    end
    
    it "returns a Net::HTTPResponse object" do
      response = @http.send(@method, "/request") {}
      response.should be_kind_of(Net::HTTPResponse)
    end
  end
end
