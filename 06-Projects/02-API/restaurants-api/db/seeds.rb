user = User.create(email: 'chuck@norris.com', password: 'azertyuiop')

Restaurant.create(
  name: 'L’étoile mystérieuse',
  address: 'Lyon',
  user: user
)

Restaurant.create(
  name: 'L’île noire',
  address: 'Lyon',
  user: user
)
