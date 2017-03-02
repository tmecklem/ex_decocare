defmodule Decocare.History.ChangeAlarmNotifyModeTest do
  use ExUnit.Case

  test "Change Alarm Notify Mode" do
    {:ok, history_page} = Base.decode16("63020040008108")
    decoded_events = Decocare.History.decode_page(history_page, %{})
    assert {:change_alarm_notify_mode, %{timestamp: ~N[2008-01-01 00:00:00], raw: ^history_page}} = Enum.at(decoded_events, 0)
  end
end
