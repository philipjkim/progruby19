class RetryException < RuntimeError
  attr:ok_to_retry
  def initialize(ok_to_retry)
    @ok_to_retry = ok_to_retry
  end
end

a = nil
if a.nil?
  raise RetryException.new(true), "a is nil"
end
