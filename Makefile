create:
	# protoc --proto_path=proto proto/helloworld/*.proto --go_out=helloworld
	# protoc --proto_path=proto proto/helloworld/*.proto --go-grpc_out=helloworld
	
	 	protoc  -I ./protos \
	    --go_out ./protos --go_opt paths=source_relative \
	    --go-grpc_out ./protos --go-grpc_opt paths=source_relative \
	    --grpc-gateway_out ./protos --grpc-gateway_opt paths=source_relative \
	    ./protos/moviesapp.proto

#    protoc -I ./proto\
#   --go_out ./proto --go_opt paths=source_relative \
#   --go-grpc_out ./proto --go-grpc_opt paths=source_relative \
#   --grpc-gateway_out ./proto --grpc-gateway_opt paths=source_relative \
#   ./proto/helloworld/hello_world.proto

clean:
	rm protos/*.go