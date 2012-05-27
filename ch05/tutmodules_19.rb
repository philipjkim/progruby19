module Observable
  def observers
    @observer_list ||= []
  end
  def add_observer(obj)
    observers << obj
  end
  def notify_observers
    observers.each {|o| o.update}
  end
end

class TelescopeScheduler
  include Observable
  def initialize
    @observer_list = []
  end
  def add_viewer(viewer)
    @observer_list << viewer
  end
end

