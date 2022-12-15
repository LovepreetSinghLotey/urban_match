/// Created by Lovepreet Singh on 17/05/22.

enum ResourceStatus {
  success,
  error,
  loading,
  notLoading;
}

class Resource<T> {
  final ResourceStatus status;
  final T? data;
  final String? message;
  final int? code;

  Resource({required this.status, this.data, this.message, this.code});

  factory Resource.success(T? data) {
    return Resource(status: ResourceStatus.success, data: data);
  }

  factory Resource.error(String message, {T? data, int? code}) {
    return Resource(
        status: ResourceStatus.error, data: data, message: message, code: code);
  }

  factory Resource.loading([String? message]) {
    return Resource(status: ResourceStatus.loading, message: message);
  }

  factory Resource.notLoading() {
    return Resource(status: ResourceStatus.notLoading);
  }
}
