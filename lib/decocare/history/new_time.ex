defmodule Decocare.History.NewTime do
  defdelegate decode(body, pump_options), to: Decocare.History.StandardEvent
end