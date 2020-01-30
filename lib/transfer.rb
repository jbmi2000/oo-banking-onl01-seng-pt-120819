class Transfer

  # attr_accessor :transfer_amount, :sender, :receiver, :status
  # 
  # def initialize(transfer, sender, receiver)
  #   @transfer = transfer
  #   @transfer_amount = transfer_amount
  #   @status = "pending"
  #   @sender = sender
  # end
  attr_accessor :sender, :receiver, :amount, :status

 def initialize(sender, receiver, amount)
   @sender = sender
   @receiver = receiver
   @amount = amount
   @status = "pending"
 end

end
