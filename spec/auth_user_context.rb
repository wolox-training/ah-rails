shared_context 'Authenticated User' do
  let(:user) do
    create(:user)
  end

  before do
    request.headers.merge! user.create_new_auth_token
  end
end
