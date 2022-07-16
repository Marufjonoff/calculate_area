import 'package:flutter/material.dart';

class CalculateArea extends StatefulWidget {
  const CalculateArea({Key? key, this.a, this.b}) : super(key: key);

  final num? a;
  final num? b;

  @override
  State<CalculateArea> createState() => _CalculateAreaState();
}

class _CalculateAreaState extends State<CalculateArea> {
  num? area;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey.shade300
              ),
              child: Text(widget.a != null ? "${widget.a}" : "a = null"),
            ),

            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey.shade300
              ),
              child: Text(widget.b != null ? "${widget.b}" : "b = null"),
            ),
          ],
        ),

        area != null ? const SizedBox(height: 50,) : const SizedBox.shrink(),

        area != null ? Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.grey.shade300
          ),
          child: Text("Area: $area"),
        ) : const SizedBox.shrink(),

        const SizedBox(height: 50,),

        GestureDetector(
          onTap: (){
            setState((){
              if(widget.a != null && widget.b != null) {
                area = widget.a! * widget.b!;
              } else {
                showDialog(context: context, builder: (context) => const Text("Error"));
              }
            });
          },
          child: Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.grey.shade300
            ),
            child: Text(widget.b != null ? "${widget.b}" : "b = null"),
          ),
        ),
      ],
    );
  }
}
