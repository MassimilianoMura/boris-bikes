class Bike 

def initialize
  @working=true
end

def broken?
	!@working
end
  
def working?
  @working
end

def report_broken
	@working = false
end

end