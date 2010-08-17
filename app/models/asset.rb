class Asset < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true
  belongs_to :movie
end

