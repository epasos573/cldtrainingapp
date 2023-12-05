require 'cldprocess'

RSpec.describe CldProcess, "#assetupload" do
  context "with upload file to test account" do
    it "returns upload response data" do

      # bin/rspec ./spec/cldprocess_spec.rb  --format doc

      cldprocess = CldProcess.new("ecpdemo","487125246667464","BpR0LBWVJ3yA7xt9uPggHIECq_k")

      # Generate the array contents
      cldprocess.get_upload_response_data()

      # Check the size
      #expect(cldprocess.upload_response_data.size).to equal 1

      # Check the contents
      #expect(cldprocess.upload_response_data[0].include? "model.jpg image: 143 KB").to equal true

      response = "#{cldprocess.upload_response_data['public_id']}.#{cldprocess.upload_response_data['format']} #{cldprocess.upload_response_data['resource_type']}: #{cldprocess.upload_response_data['bytes']/1024} KB"
      expect(response.include? "model.jpg image: 143 KB").to equal true


    end

  end
end


RSpec.describe CldProcess, "#asset_transformation" do
  context "with uploaded file for the transformation" do
    it "returns delivery URL with transformation data" do

      # bin/rspec ./spec/cldprocess_spec.rb  --format doc

      cldprocess = CldProcess.new("ecpdemo","487125246667464","BpR0LBWVJ3yA7xt9uPggHIECq_k")

      # Generate the array contents
      cldprocess.get_asset_transformation()

      # Check the size
      expect(cldprocess.asset_transformation.size).to equal 1

      # Check the contents
      expect(cldprocess.asset_transformation[0].to_s.include? "https://res.cloudinary.com/ecpdemo/image/upload/c_fill,g_face,h_200,w_640/model").to equal true

    end

  end
end




RSpec.describe CldProcess, "#asset_delete_request_response" do
  context "with uploaded file being deleted through the SDK" do
    it "returns delete asset response data" do

      cldprocess = CldProcess.new("ecpdemo","487125246667464","BpR0LBWVJ3yA7xt9uPggHIECq_k")

      # Generate the array contents
      cldprocess.get_asset_delete_request_response()

      # Check the size
      expect(cldprocess.asset_delete_request_response.size).to equal 1

      # Check the contents
      expect(cldprocess.asset_delete_request_response[0].to_s.include? '{"result"=>"ok"}').to equal true

    end

  end
end