require 'test_helper'

class ContactUsTest < ActionMailer::TestCase
  test "query" do
    mail = ContactUs.query
    assert_equal "Query", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
