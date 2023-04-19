class AddCommentableToComments < ActiveRecord::Migration[7.0]
  def up
    # Step 1: Add the commentable columns without null constraints
    add_reference :comments, :commentable, polymorphic: true

    # Step 2: Update existing comments to associate with prompts
    Comment.reset_column_information
    Comment.find_each do |comment|
      comment.update!(commentable_id: comment.prompt_id, commentable_type: 'Prompt')
    end

    # Step 3: Add null constraints to commentable columns
    change_column_null :comments, :commentable_id, false
    change_column_null :comments, :commentable_type, false

    # Step 4: Remove the old prompt_id column
    remove_column :comments, :prompt_id
  end

  def down
    # Reverse the process when rolling back
    add_column :comments, :prompt_id, :integer

    Comment.reset_column_information
    Comment.find_each do |comment|
      comment.update!(prompt_id: comment.commentable_id)
    end

    change_column_null :comments, :prompt_id, false

    remove_reference :comments, :commentable, polymorphic: true
  end
end
