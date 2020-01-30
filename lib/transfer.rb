class Transfer

  attr_accessor :transfer_amount, :sender, :receiver, :status

  def initialize(transfer, sender, receiver)
    @transfer = transfer
    @transfer_amount = transfer_amount
    @status = "pending"
    @sender = sender
  end

end
