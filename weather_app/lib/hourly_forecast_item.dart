import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {

  final String time;
  final String temperature;
  final IconData icon;

  const HourlyForecastItem({super.key, 
  required this.time, 
  required this.temperature, 
  required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Card(
                      elevation: 6,
                      child: Container(
                        width: 100,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          children: [
                            Text(time, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),maxLines: 1, overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 8 ,),
                            Icon(icon, size: 32),
                            const SizedBox(height: 8,),
                            Text(temperature),
                          ],
                        ),
                      ),
                    );
  }
}