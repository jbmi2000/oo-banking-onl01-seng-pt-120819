class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"

  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
  #  if @sender.balance < @amount
  if valid? && @sender.balance >= @amount && @status != "complete"
      @sender.balance -= @amount
      @receiver.balance += @amount

      @status = "complete"
      # puts "Transaction was already executed"
    else
      @status = "rejected"
      # @sender.deposit( @amount * -1 )
      # @receiver.deposit( @amount )
      # @status = "complete"
    end
  end


  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end

end
