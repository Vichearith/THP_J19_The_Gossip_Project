class RemoveBooleanLike < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :comment_id
    remove_column :likes, :gossip_id
    remove_column :likes, :belongs_to_gossip?
    add_reference :likes, :likeable, polymorphic: true, index: true
  end
end