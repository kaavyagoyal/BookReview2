class AddCachedLikesToBooks < ActiveRecord::Migration[7.0]
  def change

    change_table :books do |t|
      t.integer :cached_votes_total, default: 0
      t.integer :cached_votes_score, default: 0
      t.integer :cached_votes_up, default: 0
      t.integer :cached_votes_down, default: 0
      t.integer :cached_weighted_score, default: 0
      t.integer :cached_weighted_total, default: 0
      t.float :cached_weighted_average, default: 0.0
    end

    # Uncomment this line to force caching of existing votes
    # Post.find_each(&:update_cached_votes)
  end

  def change
    change_table :books do |t|
      t.integer :cached_scoped_subscribe_votes_total, default: 0
      t.integer :cached_scoped_subscribe_votes_score, default: 0
      t.integer :cached_scoped_subscribe_votes_up, default: 0
      t.integer :cached_scoped_subscribe_votes_down, default: 0
      t.integer :cached_weighted_subscribe_score, default: 0
      t.integer :cached_weighted_subscribe_total, default: 0
      t.float :cached_weighted_subscribe_average, default: 0.0

      # Uncomment this line to force caching of existing scoped votes
      # Post.find_each { |p| p.update_cached_votes("subscribe") }
    end
  end
end
