import 'package:grpc/grpc.dart';

class GrpcClientSingleton {
  ClientChannel client =
      ClientChannel("office.stvg.vn", // Your IP here, localhost might not work.
          port: 59067,
          options: ChannelOptions(
            credentials: ChannelCredentials.secure(),
            idleTimeout: Duration(minutes: 1),
          ));
}
