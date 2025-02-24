class ApiResponse {
  constructor(status, data, message) {
    this.data = data;
    this.message = message;
    this.status = status;
    this.success = status < 400 ? true : false;
  }
}

export { ApiResponse };
