require 'pusher'

Pusher.app_id = '5524'
Pusher.key = '2a01cfc8c933f2d1c60a'
Pusher.secret = '57abfd331bbca39d26ba'

class Record
  include Mongoid::Document

  field :status
  field :headers
  field :response

  after_create :send_to_pusher

  def send_to_pusher
    Pusher["xenda-mrfox-#{self.headers['Host']}"].trigger('create', {:id => self.id.to_s, :content => self.headers})
    puts "xenda-mrfox-#{self.headers['Host']}"
  end
end
