import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    String imgurl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdHoEvVXwwHJQEFlclzVc_wrEELWYQEbd6mw&s";

    return Container(
      width: 350,
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAc55TGWqEA4LsRUJrk43XSVm9UuotBo1omw&s", // Add this image to your assets
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        '23',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                      Text(
                        'AUG',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Event Details
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Beach Party',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  '8:30 pm - 11:00 pm',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(Icons.location_pin, size: 16, color: Colors.grey),
                    SizedBox(width: 5),
                    Text(
                      '1 km',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    // Attendees
                    Expanded(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(imgurl),
                          ),
                          Positioned(
                            left: 20,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(imgurl),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(imgurl),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    const Text(
                      '+12 Attending',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Join Button
          InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 4.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Theme.of(context).colorScheme.onPrimary,
                        border: Border.all(
                            color: Colors.grey[500]!.withOpacity(0.4))),
                    child: const Text('Join'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
