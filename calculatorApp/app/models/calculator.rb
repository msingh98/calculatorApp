class Calculator < ApplicationRecord
    #refers to each calculation computed in the app, I unfortunately named it calculator instead of calculation
    belongs_to :user, :optional => true

    after_create_commit {
        CalculationBroadcastJob.perform_later(self)
    }
end
