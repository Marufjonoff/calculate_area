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
              width: 200,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey.shade300
              ),
              child: Text(widget.a != null ? "${widget.a}" : "a = null", style: const TextStyle(fontSize: 25),),
            ),

            Container(
              width: 200,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey.shade300
              ),
              child: Text(widget.b != null ? "${widget.b}" : "b = null", style: const TextStyle(fontSize: 25),),
            ),
          ],
        ),

        area != null ? const SizedBox(height: 50,) : const SizedBox.shrink(),

        area != null ? Container(
          width: 200,
          alignment: Alignment.center,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.grey.shade300
          ),
          child: Text("Area: $area", style: const TextStyle(fontSize: 25),),
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
            width: 200,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.grey.shade300
            ),
            child: const Text("Calculate area", style: TextStyle(fontSize: 25),),
          ),
        ),
      ],
    );
  }
}
