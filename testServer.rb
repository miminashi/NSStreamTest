require "socket"

# クライアントからの接続を待つソケット
s0 = TCPServer.open(13350)

# 常に繰り返す
while true

# クライアントからの接続をacceptする
  sock = s0.accept
  puts "Connection Established"
  
  # クライアントからのデータを全て受け取る
  while buf = sock.gets
    print buf
  end
  
  # acceptしたソケットを閉じる
  sock.close
  puts "Connection Closed"
end

# クライアントからの接続を待つソケットを閉じる
# ただし、ここに到達することはありません。
s0.close
   
