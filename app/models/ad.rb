class Ad < ActiveRecord::Base
  # validations
  validates_presence_of :name
  validates_presence_of :content
  validates_presence_of :place
  validates_uniqueness_of :name

  # named scopes
  named_scope :from,
              lambda { |place, campaign|
                { :conditions => [ 'place like ? and campaign like ?',place, campaign ],
                  :order => 'created_at DESC',
                  :limit => 1
                }
              }
  named_scope :located_at,
              lambda { |place|
                { :conditions => [ 'place like ?', place],
                  :order => 'created_at DESC',
                }
              }
  named_scope :from_campaign,
              lambda { |campaign|
                { :conditions => [ 'campaign like ?',place, campaign ],
                  :order => 'created_at DESC',
                }
              }

  PLACES = {  :first        =>  'noticias',
              :second       =>  'central',
              :third        =>  'derecha',
              :posts        =>  'internas',
              :top          =>  'arriba del título',
              :title        =>  'titulo',
              :below_title  =>  'debajo del título',
              :video        =>  'video',
              :bottom       =>  'debajo'
          }

end

# == Schema Information
#
# Table name: ads
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  campaign    :string(255)
#  content     :text
#  started_at  :datetime
#  finished_at :datetime
#  place       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

