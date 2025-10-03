class BackfillArtistUsers < ActiveRecord::Migration[8.0]
  disable_ddl_transaction!

  def up
    say_with_time "Backfilling artist_users" do
      execute <<~SQL
        INSERT INTO artist_users (artist_id, user_id, owner, created_at, updated_at)
        SELECT id, user_id, TRUE, NOW(), NOW()
        FROM artists
        WHERE user_id IS NOT NULL
        ON CONFLICT DO NOTHING;
      SQL
    end
  end

  def down
    # nada
  end
end