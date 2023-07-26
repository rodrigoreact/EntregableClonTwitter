class Tweet < ApplicationRecord
    include Pagy::Frontend
    include PgSearch::Model

    pg_search_scope :search_full_text,
    against: {
        user_name: 'A',
        id: 'B',
    }
end