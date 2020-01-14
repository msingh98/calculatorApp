class CalculationBroadcastJob < ApplicationJob
  queue_as :default

  def perform(calculation)
    # Do something later
    ActionCable.server.broadcast "chat", {
      calculation: render_calculation(calculation)
    }
  end

  private
  def render_calculation(calculation)
    CalculatorsController.render(
      partial: 'calculation',
      locals: {
        calculation: calculation
      }
    )
  end
end
