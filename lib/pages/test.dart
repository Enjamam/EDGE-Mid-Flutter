import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {

    var size = Get.size;

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(child: Icon(Icons.shopping_cart,color: Colors.white,size: size.width * .065,),alignment: PlaceholderAlignment.middle),
                  TextSpan(
                    text: "  items in cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: size.width * .045,
                    )
                  )
                ]
              ),
              textAlign: TextAlign.center,
            ),
            
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(child: Icon(Icons.history_toggle_off,color: Colors.white,size:size.width*.065,),alignment: PlaceholderAlignment.middle),
                    TextSpan(
                        text: "  purchase history",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: size.width * .045,
                        )
                    )
                  ]
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(child: Icon(Icons.settings,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                  TextSpan(
                      text: "  app settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: size.width * .045,
                      )
                  )
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}
