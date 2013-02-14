class PersonSerializer < ApplicationSerializer
  attributes :id, :fullname, :anonymized, :thumb_url, :small_url, :medium_url,
    :large_url, :bio, :influences, :email, :hometown, :major,
    :class_year, :website_url, :twitter_username, :facebook_username,
    :linkedin_username, :tumblr_username, :favorite_artists, :favorite_films,
    :favorite_tv_shows

  has_many :shows, serializer: ShortShowSerializer
end