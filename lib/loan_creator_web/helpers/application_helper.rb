module LoanCreatorWeb
  module ApplicationHelper
    def fix_params_type(params)
      params = params.merge({initial_values:{}}) if params[:initial_values].nil?

      {}.tap do |h|
        h[:type] = params[:type]
        h[:period] = params[:period]
        h[:amount] = params[:amount].to_f unless params[:amount].empty?
        h[:annual_interests_rate] = params[:annual_interests_rate].to_f unless params[:annual_interests_rate].empty?
        h[:starts_on] = Date.parse(params[:starts_on]) unless params[:starts_on].empty?
        h[:duration_in_periods] = params[:duration_in_periods].to_i unless params[:duration_in_periods].empty?
        h[:initial_values] = {}.tap do |ivh|
          ivh[:paid_capital] = params[:initial_values][:paid_capital].to_f unless params[:initial_values][:paid_capital].empty?
          ivh[:paid_interests] = params[:initial_values][:paid_interests].to_f unless params[:initial_values][:paid_interests].empty?
          ivh[:accrued_delta_interests] = params[:initial_values][:accrued_delta_interests].to_f unless params[:initial_values][:accrued_delta_interests].empty?
          ivh[:due_interests] = params[:initial_values][:due_interests].to_f unless params[:initial_values][:due_interests].empty?
          ivh[:starting_index] = params[:initial_values][:starting_index].to_i unless params[:initial_values][:starting_index].empty?
        end
      end
    end

    def selected(params:, value:)
      value == params ? 'selected' : ''
    end

    def number_to_euro(number)
      "#{number} €"
    end
  end
end
