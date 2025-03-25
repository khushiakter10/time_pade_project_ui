 import 'package:flutter/material.dart';

class CustomFavoriteWidget extends StatefulWidget {
  final ImageProvider imageProvider;
  final double? borderRadius;
  final double? iconSize;
  final double? avatarRadius;
  final Color? iconColor;
  final Color? backgroundColor;
  final AlignmentGeometry? iconPosition;

  const CustomFavoriteWidget({
    super.key,
    required this.imageProvider,
    this.borderRadius,
    this.iconSize,
    this.avatarRadius,
    this.iconColor,
    this.backgroundColor,
    this.iconPosition,
  });

  @override
  State<CustomFavoriteWidget> createState() => _CustomFavoriteWidgetState();
}

class _CustomFavoriteWidgetState extends State<CustomFavoriteWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: widget.iconPosition ?? Alignment.bottomRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
          child: Image(
            image: widget.imageProvider,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: CircleAvatar(
              backgroundColor: widget.backgroundColor ?? Colors.grey,
              radius: widget.avatarRadius,
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? (widget.iconColor ?? Colors.red) : Colors.black54,
                size: widget.iconSize,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
