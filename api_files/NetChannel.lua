--- @meta
--- @class NetChannel
NetChannel = { }

--- Gets the latency of the specified flow in the network channel.
--- @param flow Enum.Flow # The flow of the network channel.
--- @return number # The latency of the specified flow.
--- @nodiscard
function NetChannel.GetLatency(flow) end

--- Gets the average latency of the specified flow in the network channel.
--- @param flow Enum.Flow # The flow of the network channel.
--- @return number # The average latency of the specified flow.
--- @nodiscard
function NetChannel.GetAvgLatency(flow) end

return NetChannel