# 에러발생
# defmodule 모듈 do
#     def 메인 do
#         name = IO.gets('이름?')
#     end
# end

# 컴파일 에러
# defmodule 모듈 do
#     def main do
#         name = IO.gets('이름?')
#     end
# end

defmodule Modules do
    def main do
        IO.gets('이름?')
    end

    def test(arg1) do
        IO.puts(arg1)
    end

    def test2(arg1, arg2) do
        IO.puts(arg1)
        IO.puts(arg2)
    end
end