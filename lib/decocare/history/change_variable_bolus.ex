defmodule Decocare.History.ChangeVariableBolus do
  alias Decocare.DateDecoder

  def decode_change_variable_bolus(<<_::8, timestamp::binary-size(5)>>) do
    %{
      timestamp: DateDecoder.decode_history_timestamp(timestamp)
    }
  end
end
