
import 'package:flutter/material.dart';

class FAQTileWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final String content;

  FAQTileWidget({
    required this.title,
    required this.subtitle,
    required this.content,
  });

  @override
  _FAQTileWidgetState createState() => _FAQTileWidgetState();
}
class _FAQTileWidgetState extends State<FAQTileWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(10), // Apply the provided border radius
      ),
      color: Color(0xff222222),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              widget.title,
              style: TextStyle(
                  fontSize: 14,
                  color: _isExpanded ? Color(0xffFB4E25) : Colors.white),
            ),
            subtitle: _isExpanded
                ? null
                : Text(
              widget.subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: Color(0xffC8C8C8)),
            ),
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            trailing: Icon(
              _isExpanded
                  ? Icons.expand_less_rounded
                  : Icons.expand_circle_down_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
          if (_isExpanded)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.subtitle,
                    style: TextStyle(fontSize: 12, color: Color(0xffC8C8C8)),
                  ),
                  Text(widget.content,
                      style: TextStyle(fontSize: 12, color: Color(0xffC8C8C8))),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
