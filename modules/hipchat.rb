module Hipchat
  def self.update_message_params
    {
      :message_format => 'text',
      :color => 'gray'
    }
  end

  def self.create_message_params
    {
      :message_format => 'text',
      :color => 'red'
    }
  end

  def self.closed_message_params
    {
      :message_format => 'text',
      :color => 'green'
    }
  end
end