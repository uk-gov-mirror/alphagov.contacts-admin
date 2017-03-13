require "rails_helper"

describe ContactRummagerPresenter do
  it "should generate a Rummager format" do
    contact = create(:contact,
                      :with_contact_group,
                      title: "Major Tom",
                      description: "Back to Earth")
    expected = {
      title:             "Major Tom",
      description:       "Back to Earth",
      link:              "/government/organisations/#{contact.organisation.slug}/contact/major-tom",
      format:            'contact',
      indexable_content: "Major Tom Back to Earth #{contact.contact_groups.first.title}",
      content_store_document_type: "contact",
      public_timestamp:  contact.updated_at,
      contact_groups:    [contact.contact_groups.first.slug],
    }

    expect(ContactRummagerPresenter.new(contact).present).to eql(expected)
  end
end
