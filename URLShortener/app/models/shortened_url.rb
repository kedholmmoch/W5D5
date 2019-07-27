class ShortenedUrl < ApplicationRecords
  validates :long_url, presence: true, uniqueness: true
  validates :short_url, presence: true, uniqueness: true
  validates :user_id, presence: true

  attr_accessor :long_url, :short_url
  attr_reader :user_id

  def initialize(options)
    @long_url = options['long_url']
    @short_url = options['short_url']
    @user_id = options['user_id']
  end

  def self.random_code
    url = SecureRandom.urlsafe_base64
    if !ShortenedUrl.exists?(SecureRandom.urlsafe_base64)
      @short_url = SecureRandom.urlsafe_base64
    else


  end

end