# == Schema Information
#
# Table name: emails
#
#  id                              :bigint           not null, primary key
#  body                            :text
#  delivered_at                    :datetime         not null
#  delivered_at_date               :date             not null
#  direction                       :string           default("inbound"), not null
#  recipients                      :string           default([]), not null, is an Array
#  sender                          :string
#  snippet                         :text
#  subject                         :text
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  action_mailbox_inbound_email_id :bigint           not null
#
# Indexes
#
#  index_emails_on_delivered_at_date  (delivered_at_date)
#  index_emails_on_delivered_at_hour  (date_trunc('hour'::text, delivered_at))
#  index_emails_on_recipients         (recipients) USING gin
#  index_emails_on_sender             (sender)
#
require "test_helper"

class EmailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
