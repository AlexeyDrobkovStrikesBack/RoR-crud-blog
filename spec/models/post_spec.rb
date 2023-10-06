require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'creates a new post' do
    post = Post.create(
      title: 'Test Post',
      description: 'This is the content of the test post.',
      user_id: 1 
    )

    expect(post).to be_valid
  end


  it 'edites a new post' do
    post = Post.create(
      title: 'Test Post',
      description: 'This is the content of the test post.',
      user_id: 1 
    )

    post.update(title: 'Edited Test Post', description: 'This is the edited content.')

    expect(post.title).to eq('Edited Test Post')
    expect(post.description).to eq('This is the edited content.')
  end
  

  it 'removes a post' do
    post = Post.create(
      title: 'Test Post',
      description: 'This is the content of the test post.',
      user_id: 1 # You might need to adjust this user_id as per your setup.
    )

    expect { post.destroy }.to change { Post.count }.by(-1)
  end
end
