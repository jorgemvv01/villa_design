import 'package:flutter/material.dart';
import 'package:villa_design/src/atoms/avatar/avatar.dart';
import 'package:villa_design/src/tokens/colors.dart';
import 'package:villa_design/src/tokens/typography.dart';

/// A molecule that displays a user's profile information in a row.
///
/// It combines a [VillaAvatar] with a name and a subtitle, making it
/// suitable for lists, headers, or comment sections.
class VillaUserProfile extends StatelessWidget {
  /// The optional URL for the user's avatar image.
  final String? imageUrl;

  /// The initials displayed as a fallback if [imageUrl] is not provided.
  final String initials;

  /// The primary text, typically the user's full name.
  final String name;

  /// The secondary text, such as a username, email, or status.
  final String subtitle;

  /// An optional callback that is triggered when the row is tapped.
  final VoidCallback? onTap;

  /// Creates a [VillaUserProfile].
  ///
  /// The [initials], [name], and [subtitle] parameters are required.
  const VillaUserProfile({
    super.key,
    this.imageUrl,
    required this.initials,
    required this.name,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final typography = VillaTypography(
      VillaColors(Theme.of(context).brightness)
    );

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        child: Row(
          children: [
            VillaAvatar(
              imageUrl: imageUrl,
              initials: initials,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: typography.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    subtitle,
                    style: typography.body,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}