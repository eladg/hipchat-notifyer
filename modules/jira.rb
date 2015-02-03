module Jira
  def self.options
    {
      :site            => 'https://stringwire.atlassian.net/',
      :context_path    => '',
      :username        => Notifyer::JIRA_CONSUMER_KEY,
      :password        => Notifyer::JIRA_CONSUMER_SECRET,
      :auth_type       => :basic,
      :rest_base_path  => '/rest/api/2'
    }    
  end

  def self.client
    JIRA::Client.new options
  end

  def self.user_display_name(key)
    begin
      client.User.find(key).displayName
    rescue Exception => e
      key + " (user not found?)"
    end
  end
end