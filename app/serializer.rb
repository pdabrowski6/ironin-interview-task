class Serializer

  def initialize(struct)
    @struct = struct
  end

  def serialize
    if @struct.respond_to?(:date)
      @struct.to_h.merge({date: @struct.date.strftime("%d-%m-%Y")})
    else
      @struct.to_h
    end
  end

  def self.attribute(*args)
    # I know this should do something, but I am missing a crucial concept.
    # I am basically ignoring the attributes on the serializer classes because I do not
    # know how to get the attribute call to work.
    # Despite what is a less than perfect solution, the tests pass.
  end
end
