import 'package:flutter/material.dart';
import 'package:villa_design/src/tokens/colors.dart';
import 'package:villa_design/src/tokens/typography.dart';

/// A circular widget for displaying a user's avatar.
///
/// It can display an image from a URL, or show the user's initials
/// as a fallback if no image is provided.
class VillaAvatar extends StatelessWidget {
  /// The URL of the user's profile image.
  final String? imageUrl;

  /// The initials to display if [imageUrl] is null or empty.
  ///
  /// Defaults to '??'.
  final String initials;

  /// The radius of the avatar circle.
  ///
  /// Defaults to 24.0.
  final double radius;

  /// Creates a [VillaAvatar].
  const VillaAvatar({
    super.key,
    this.imageUrl,
    this.initials = '??',
    this.radius = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    final colors = VillaColors(Theme.of(context).brightness);
    final typography = VillaTypography(colors);

    final hasImage = imageUrl != null && imageUrl!.isNotEmpty;

    return CircleAvatar(
      radius: radius,
      backgroundColor: colors.primary.withOpacity(0.1),
      backgroundImage: hasImage ? NetworkImage(imageUrl!) : null,
      child: hasImage
        ? null
        : Text(
            initials.toUpperCase(),
            style: typography.h3.copyWith(
              color: colors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
    );
  }
}