class Stuff
  def initialize

  end
  def action(myAction)
    puts "#{myAction} action method called"
  end

  def alias_secret
    something_secret
  end
  
  private
  def something_secret
    puts 'you cannot call me from outside!'
  end

end

s = Stuff.new
s.action('jump')

s.public_send(:action, 'jump')
