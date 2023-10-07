class User < ApplicationRecord
    # Validação de formato de e-mail
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Deve ser um e-mail válido" }
    
    # Validação de formato de CPF
    validates :cpf, presence: true, format: { with: /\A\d{3}\.\d{3}\.\d{3}-\d{2}\z/, message: "Deve estar no formato 123.456.789-00" }
    
    # Validação de formato de telefone (considerando números com 9 dígitos)
    validates :phone, presence: true, format: { with: /\A\d{9}\z/, message: "Deve conter 9 dígitos" }
  end