import 'package:flutter/material.dart';

class movieCard extends StatelessWidget {
  final String movieTitle, imageUrl,description;

  const movieCard({
    Key? key,
    required this.movieTitle,
    required this.imageUrl,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.26;
    double cardHeight = MediaQuery.of(context).size.height * 0.3;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 4, // Add elevation for a raised effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          width: cardWidth,
          height: cardHeight,
          padding: EdgeInsets.all(8.0), // Add padding for content spacing
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movieTitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8), // Add spacing below the title
              Divider(), // Horizontal divider below the title
              SizedBox(height: 8), // Add spacing below the divider
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        imageUrl,
                        height: cardHeight * 0.6,
                        width: cardWidth * 0.4, // Adjust image width
                        fit: BoxFit.cover, // Ensure the image covers its area
                      ),
                    ),
                    SizedBox(width: 10), // Add spacing between image and text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "UNIVERSAL STUDIOS",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(), // Horizontal divider
                          Text(
                            "Jan 17, 2024",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Divider(), // Horizontal divider
                          Expanded(
                            child: SingleChildScrollView(
                              child: Text(
                               description,
                
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8), // Add spacing above the icons row
              Divider(), // Horizontal divider above the icons row
              SizedBox(height: 8), // Add spacing below the divider
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.square),
                  Icon(Icons.circle),
                  Icon(Icons.cabin),
                  Icon(Icons.man),
                  Icon(Icons.dangerous),
                  Icon(Icons.qr_code),
                  Icon(Icons.dark_mode),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
