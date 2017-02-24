defmodule Decocare.History.UnabsorbedInsulinTest do
  use ExUnit.Case

  test "Unabsorbed Insulin" do
    {:ok, history_page} = Base.decode16("5C11C8C30470F50402091436131470DB14")
    decoded_events = Decocare.History.decode_page(history_page, %{ large_format: false })
    expected_event_info = %{
      data: [
        %{ age: 195, amount: 5.00 },
        %{ age: 245, amount: 2.80 },
        %{ age: 265, amount: 0.05 },
        %{ age: 275, amount: 1.35 },
        %{ age: 475, amount: 2.80 }
      ],
      raw: history_page
    }
    assert {:unabsorbed_insulin, ^expected_event_info} = Enum.at(decoded_events, 0)
  end
end
