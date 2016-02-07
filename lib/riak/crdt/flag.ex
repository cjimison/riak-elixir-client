defmodule Riak.CRDT.Flag do
  @moduledoc """
  Encapsulates a boolean datatype inside a CRDT.Map
  """
  require Record

  @doc """
  Creates a new flag container
  """
  def new, do: :riakc_flag.new
  def new(context), do: :riakc_flag.new(context)
  def new(value, context) when is_boolean(value), do: :riakc_flag.new(value, context) 

  @doc """
  Extracts current value of `flag`
  """
  def value(flag) when Record.is_record(flag, :flag) do
    :riakc_flag.value(flag)
  end

  @doc """
  Turns the value to true
  """
  def enable(flag) when Record.is_record(flag, :flag) do
    :riakc_flag.enable(flag)
  end

  @doc """
  Turns the value to false
  """
  def disable(flag) when Record.is_record(flag, :flag) do
    :riakc_flag.disable(flag)
  end
end
