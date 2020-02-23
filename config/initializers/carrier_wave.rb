if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :aws_access_key_id => ENV['ACCESS_KEY_ID'],
      :aws_secret_access_key => ENV['SECRET_ACCESS_KEY'],
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      
    }
    config.fog_directory     =  ENV['pokecaonlinesalon']
  end
end