class ProposalViewerController < ApplicationController

  PROPOSAL_TEMPLATES_DIR = File.join(Rails.root, '/public/proposal-template')

  def show
    proposal = Proposal.find(params[:id])

    data = {
        :proposal_name => proposal.name,
        :proposal_send_date => proposal.send_date,
        :proposal_user_name => proposal.user_name,
        :client_company => proposal.client.company,
        :client_name => proposal.client.name,
        :client_website => proposal.client.website
    }

    render :inline => render_user_template('index.html', data)
  end

  private

  def render_user_template(filename, data)
    abs_filepath = File.join(PROPOSAL_TEMPLATES_DIR, filename)
    readed = IO.read(abs_filepath)

    data.each do |key, value|
      readed.gsub!("{#{key.to_s}}", value.to_s)
    end
    readed
  end
end
