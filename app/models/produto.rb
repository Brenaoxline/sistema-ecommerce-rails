class Produto < ApplicationRecord

    belongs_to :departamento, optional: true

    validates :preco, :quantidade, :numericality => { :greater_than => 0}
    validates :preco, :departamento, presence: true
    validates :nome, length: { minimum: 4}
end
