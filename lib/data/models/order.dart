class Order {
  int? id;
  int? userId;
  int destinationId;
  String startDate;
  int duration;
  int ticketQuantity;
  String totalAmount;
  String? paymentStatus;
  String? purchaseDate;

  Order({
    this.id,
    this.userId,
    required this.destinationId,
    required this.startDate,
    required this.duration,
    required this.ticketQuantity,
    required this.totalAmount,
    this.paymentStatus,
    this.purchaseDate,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        userId: json["user_id"],
        destinationId: json["destination_id"],
        startDate: json["start_date"],
        duration: json["duration"],
        ticketQuantity: json["ticket_quantity"],
        totalAmount: json["total_amount"],
        paymentStatus: json["payment_status"],
        purchaseDate: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "destination_id": destinationId,
        "start_date": startDate,
        "duration": duration,
        "ticket_quantity": ticketQuantity,
        "total_amount": totalAmount,
      };
}
