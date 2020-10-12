def calcul(nb1, nb2, operator)
  case operator
  when '+' then nb1 + nb2
  when '-' then nb1 - nb2
  when '*' then nb1 * nb2
  when '/' then nb1.fdiv(nb2)
  end
end
