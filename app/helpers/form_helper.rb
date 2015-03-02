module FormHelper
  def setup_log(log)
    log.games ||= Game.new

    log
  end
end
