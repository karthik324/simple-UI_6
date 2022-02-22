import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  String imageUrl;
  String header;
  int? piece;
  int price;
  String? stock = 'In stock';
  CustomListTile(
      {Key? key,
      required this.header,
      required this.imageUrl,
      this.piece,
      this.stock,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 155,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              imageUrl,
                              width: 90,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 183,
                                  child: Text(
                                    header,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  )),
                              Text("1 piece"),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "₹ $price",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'In Stock',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(
                            height: 26,
                          ),
                          Switch(
                            value: true,
                            onChanged: (value) {},
                            activeColor: Colors.blue,
                            inactiveTrackColor: Colors.blue[50],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.grey[400]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 11, 0, 0),
                    child: Row(
                      children: [
                        Icon(Icons.share_outlined),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          'Share Product',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
