import ballerina/grpc;
import tool_test_packaging_2.message;

listener grpc:Listener ep = new (9090);

@grpc:Descriptor {value: PACKAGEWITHMESSAGEIMPORT_DESC, descMap: PACKAGEWITHMESSAGEIMPORT_DESCRIPTOR_MAP}
service "helloWorld" on ep {

    remote function hello1(message:ReqMessage value) returns message:ResMessage|error {
    }
    remote function hello3(stream<message:ReqMessage, grpc:Error?> clientStream) returns message:ResMessage|error {
    }
    remote function hello2(message:ReqMessage value) returns stream<message:ResMessage, error?>|error {
    }
    remote function hello(stream<boolean, grpc:Error?> clientStream) returns stream<boolean, error?>|error {
    }
    remote function hello4(stream<message:ReqMessage, grpc:Error?> clientStream) returns stream<message:ResMessage, error?>|error {
    }
    remote function hello5(stream<RootMessage, grpc:Error?> clientStream) returns stream<RootMessage, error?>|error {
    }
    remote function hello10(stream<RootMessage, grpc:Error?> clientStream) returns stream<message:ResMessage, error?>|error {
    }
    remote function hello11(stream<message:ReqMessage, grpc:Error?> clientStream) returns stream<RootMessage, error?>|error {
    }
}

