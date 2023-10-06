require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'creates a new comment' do
    comment = Comment.create(
      body: 'This is a test comment.',
      user_id: 1,
      post_id: 2
    )

    expect(comment).to be_valid
  end

  it 'deletes a comment' do
    comment = Comment.create(
      body: 'This comment will be deleted.',
      user_id: 1,
      post_id: 2
    )

    expect { comment.destroy }.to change { Comment.count }.by(-1)
  end
end
