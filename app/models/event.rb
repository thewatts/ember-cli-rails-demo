class Event < ActiveRecord::Base
  before_validation :generate_slug

  private

  def generate_slug
    unless slug.present?
      self.slug = name.parameterize
    end
  end
end
