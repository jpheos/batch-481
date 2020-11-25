class EnhanceUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Call Clearbit with an email
    Clearbit.key = 'sk_9d91e4ab40251a0b7cdaa2b994ff4853'
    result = Clearbit::Enrichment.find(email: user.email, stream: true)

    user.update(
      full_name: result['person']['name']['fullName'],
      avatar_url: result['person']['avatar']
    )
  end
end
