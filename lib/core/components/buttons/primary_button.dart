import 'package:cubit_auth_revise/core/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final bool isEnabled;
  const PrimaryButton({super.key, this.onTap, this.isEnabled = true});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: isEnabled ? onTap : null,
      child: Container(
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isEnabled ? AppColors.primary : Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
