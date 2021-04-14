require 'pry'

module LoanCreatorWeb
  module ApplicationHelper
    def fix_params_type(params)
      params = params.merge({ initial_values: {} }) if params[:initial_values].nil?

      {}.tap do |h|
        h[:type] = params[:type]
        h[:period] = params[:period]
        h[:amount] = to_right_format(params: 'amount', value: params[:amount], type: 'Float')
        h[:annual_interests_rate] = to_right_format(params: 'annual_interests_rate', value: params[:annual_interests_rate], type: 'Float')
        h[:starts_on] = to_right_format(params: 'starts_on', value: params[:starts_on], type: 'Date')
        h[:duration_in_periods] = to_right_format(params: 'duration_in_periods', value: params[:duration_in_periods], type: 'Integer')
        h[:initial_values] = {}.tap do |ivh|
          ivh[:paid_capital] = to_right_format(params: 'paid_capital', value: params[:initial_values][:paid_capital], type: 'Float')
          ivh[:paid_interests] = to_right_format(params: 'paid_interests', value: params[:initial_values][:paid_interests], type: 'Float')
          ivh[:accrued_delta_interests] = to_right_format(params: 'accrued_delta_interests', value: params[:initial_values][:accrued_delta_interests], type: 'Float')
          ivh[:due_interests] = to_right_format(params: 'due_interests', value: params[:initial_values][:due_interests], type: 'Float')
          ivh[:starting_index] = to_right_format(params: 'starting_index', value: params[:initial_values][:starting_index], type: 'Float')
        end
      end
    end

    def to_right_format(params:, value:, type:)
      return if value.blank?

      case type
      when 'Float'
        value.to_f
      when 'Date'
        Date.parse(value)
      when 'Integer'
        value.to_i
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
