class Transfer
  attr_reader :transfer
  attr_accessor :transfer, :sender, :receiver, :status

  def initialize(transfer, sender, receiver, transfer_amount = 0, status = "pending")
    @transfer = transfer
    @transfer_amount = transfer_amount
    @status = status
    @sender = sender
  end

end
