class ApiController < ApplicationController

    def info
        slack_name = params[:slack_name]
        track = params[:track]
        current_day = Time.now.strftime('%A')
        utc_time = Time.now.utc.strftime('%Y-%m-%dT%H:%M:%SZ')
        github_file_url = ''
        github_repo_url = ''
        status_code = 200

    response_data = {
      slack_name: slack_name,
      track: track,
      current_day: current_day,
      utc_time: utc_time,
      github_file_url: github_file_url,
      github_repo_url: github_repo_url,
      status_code: status_code
    }

    render json: response_data
  end
end
