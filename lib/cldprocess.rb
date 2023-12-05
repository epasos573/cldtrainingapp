require 'cloudinary'

class CldProcess

  def initialize(cloudname, apikey, apisecret)
    @cloud_name = cloudname
    @api_key = apikey
    @api_secret = apisecret

    Cloudinary.config do |config|
        config.cloud_name = @cloud_name
        config.api_key = @api_key
        config.api_secret = @api_secret
        config.secure = true
    end

  end

  def cloud_name
    @cloud_name
  end

  def api_key
    @api_key
  end

  def api_secret
    @api_secret
  end





  attr_reader :upload_response_data
  attr_reader :asset_transformation
  attr_reader :asset_delete_request_response




  def get_upload_response_data()

    #result = Array.new


    ## Upload two files using the Upload API:

    # Use the uploaded filename as the asset's public ID + allow overwriting the asset with new versions.
    upload1=Cloudinary::Uploader.upload("https://cloudinary-devs.github.io/cld-docs-assets/assets/images/model.jpg",
                                        use_filename:true,
                                        unique_filename:false,
                                        overwrite:true,
                                        invalidate:true
    )

    # Retrieve some attributes from the first upload response.
    # puts "Upload response: #{upload1}"

    #puts "File size of the #{upload1['public_id']}.#{upload1['format']} #{upload1['resource_type']}: #{upload1['bytes']/1024} KB"
    # Upload response: {
    #     "asset_id"=>"f43a93d90cd0ca39ccdf72fc72ec56d7",
    #     "public_id"=>"model",
    #     "version"=>1701400885,
    #     "version_id"=>"3e0394c554f5aa2ed9f372f808de43bd",
    #     "signature"=>"41b0e2db04df5387f4392bbec8e1451888431edc",
    #     "width"=>1200, "height"=>1200,
    #     "format"=>"jpg",
    #     "resource_type"=>"image",
    #     "created_at"=>"2023-12-01T03:21:25Z",
    #     "tags"=>[],
    #     "bytes"=>146940,
    #     "type"=>"upload",
    #     "etag"=>"9f43753bbc235285651ccab5548d5556",
    #     "placeholder"=>false,
    #     "url"=>"http://res.cloudinary.com/ecpdemo/image/upload/v1701400885/model.jpg",
    #     "secure_url"=>"https://res.cloudinary.com/ecpdemo/image/upload/v1701400885/model.jpg",
    #     "folder"=>"",
    #     "access_mode"=>"public",
    #     "overwritten"=>true,
    #     "original_filename"=>"model",
    #     "api_key"=>"487125246667464"
    #  }



    # Manually set the asset's public ID + allow overwriting asset with new versions.
    #upload2=Cloudinary::Uploader.upload("https://cloudinary-devs.github.io/cld-docs-assets/assets/images/coffee_cup.jpg",
    #                                    public_id: "coffee",
    #                                    unique_filename: false,
    #                                    overwrite: true,
    #                                    invalidate:true
    #)

    # Retrieve some attributes from the second upload response.
    # puts "File size of the #{upload2['public_id']}.#{upload2['format']} #{upload2['resource_type']}: #{upload2['bytes']/1024} KB"

    response = "#{upload1['public_id']}.#{upload1['format']} #{upload1['resource_type']}: #{upload1['bytes']/1024} KB"

    puts response

    # Use JSON object (?) for verification in rspec (JSON.parse(variable))
    #result.push(response)


    @upload_response_data = upload1

  end


  def get_asset_transformation()

    result = Array.new

    cld_image_sample = Cloudinary::Utils.cloudinary_url('model', :transformation=>
      {:crop=>"fill", :gravity=>"face", :width=>640, :height=>200,  }
    )

    puts cld_image_sample

    result.push(cld_image_sample)

    @asset_transformation = result

  end



  def get_asset_delete_request_response()

    result = Array.new

    # Manually set the asset's public ID + allow overwriting asset with new versions.
    upload2=Cloudinary::Uploader.upload("https://cloudinary-devs.github.io/cld-docs-assets/assets/images/coffee_cup.jpg",
                                        public_id: "coffee",
                                        unique_filename: false,
                                        overwrite: true,
                                        invalidate:true
    )

    # Retrieve some attributes from the second upload response.
    puts "File size of the #{upload2['public_id']}.#{upload2['format']} #{upload2['resource_type']}: #{upload2['bytes']/1024} KB"

    puts "Deleting the file..."

    result.push(Cloudinary::Uploader.destroy(upload2['public_id']))

    @asset_delete_request_response = result

  end


end