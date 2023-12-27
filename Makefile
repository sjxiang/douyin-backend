proto:
	rm -f pb/*.go
	rm -f doc/swagger/*.swagger.json
	protoc --proto_path=idl \
	--go_out=pb --go_opt=paths=source_relative \
	--go-grpc_out=pb --go-grpc_opt=paths=source_relative \
	--grpc-gateway_out=pb --grpc-gateway_opt=paths=source_relative \
	--experimental_allow_proto3_optional \
	--openapiv2_out=doc/swagger --openapiv2_opt=allow_merge=true,merge_file_name=douyin_backend \
	idl/*.proto

.PHONY: proto