defmodule IslandsEngine.Coordinate do
    alias __MODULE__
    @enforce_keys [:row, :col]
    defstruct [:row, :col]
    # 구조체의 인스턴스를 생성한다

    def test(), do:
        IO.puts("test")

    @board_range 1..10
    # board_range는 어디에서 유래한 매크로인가?
    def new(row, col) when row in(@board_range) and col in(@board_range) ,do:
        {:ok, %Coordinate{row: row, col: col}}

    def new(_row, _col), do: {:err, "Invalid row or column"}

end