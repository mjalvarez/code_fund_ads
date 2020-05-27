# == Schema Information
#
# Table name: pixel_conversions
#
#  id                   :bigint           not null, primary key
#  clicked_at           :datetime
#  clicked_at_date      :date
#  country_code         :string
#  displayed_at         :datetime         not null
#  displayed_at_date    :date             not null
#  fallback_campaign    :boolean          default(FALSE), not null
#  ip_address           :string           not null
#  latitude             :decimal(, )
#  longitude            :decimal(, )
#  metadata             :jsonb            not null
#  pixel_name           :string           default(""), not null
#  pixel_value_cents    :integer          default(0), not null
#  pixel_value_currency :string           default("USD"), not null
#  postal_code          :string
#  test                 :boolean          default(FALSE)
#  user_agent           :text             not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  advertiser_id        :bigint           not null
#  campaign_id          :bigint           not null
#  creative_id          :bigint           not null
#  impression_id        :uuid             not null
#  pixel_id             :uuid             not null
#  property_id          :bigint           not null
#  publisher_id         :bigint           not null
#  tracking_id          :string           not null
#
# Indexes
#
#  index_pixel_conversions_on_advertiser_id               (advertiser_id)
#  index_pixel_conversions_on_campaign_id                 (campaign_id)
#  index_pixel_conversions_on_clicked_at_date             (clicked_at_date)
#  index_pixel_conversions_on_clicked_at_hour             (date_trunc('hour'::text, clicked_at))
#  index_pixel_conversions_on_country_code                (country_code)
#  index_pixel_conversions_on_creative_id                 (creative_id)
#  index_pixel_conversions_on_displayed_at_date           (displayed_at_date)
#  index_pixel_conversions_on_displayed_at_hour           (date_trunc('hour'::text, displayed_at))
#  index_pixel_conversions_on_impression_id               (impression_id)
#  index_pixel_conversions_on_metadata                    (metadata) USING gin
#  index_pixel_conversions_on_pixel_id                    (pixel_id)
#  index_pixel_conversions_on_pixel_id_and_impression_id  (pixel_id,impression_id) UNIQUE
#  index_pixel_conversions_on_property_id                 (property_id)
#
require 'test_helper'

class PixelConversionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end