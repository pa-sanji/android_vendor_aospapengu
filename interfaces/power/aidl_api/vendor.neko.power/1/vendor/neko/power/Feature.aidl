/*
 * SPDX-FileCopyrightText: Paranoid Android
 * SPDX-License-Identifier: Apache-2.0
 */
///////////////////////////////////////////////////////////////////////////////
// THIS FILE IS IMMUTABLE. DO NOT EDIT IN ANY CASE.                          //
///////////////////////////////////////////////////////////////////////////////

// This file is a snapshot of an AIDL file. Do not edit it manually. There are
// two cases:
// 1). this is a frozen version file - do not edit this in any case.
// 2). this is a 'current' file. If you make a backwards compatible change to
//     the interface (from the latest frozen version), the build system will
//     prompt you to update this file with `m <name>-update-api`.
//
// You must not make a backward incompatible change to any AIDL file built
// with the aidl_interface module type with versions property set. The module
// type is used to build AIDL files in a way that they can be used across
// independently updatable components of the system. If a device is shipped
// with such a backward incompatible change, it has a high risk of breaking
// later when a module using the interface is updated, e.g., Mainline modules.

package vendor.neko.power;
@Backing(type="int") @VintfStability
enum Feature {
  GESTURES,
  DOUBLE_TAP,
  DRAW_V,
  DRAW_INVERSE_V,
  DRAW_O,
  DRAW_M,
  DRAW_W,
  DRAW_ARROW_LEFT,
  DRAW_ARROW_RIGHT,
  ONE_FINGER_SWIPE_UP,
  ONE_FINGER_SWIPE_RIGHT,
  ONE_FINGER_SWIPE_DOWN,
  ONE_FINGER_SWIPE_LEFT,
  TWO_FINGER_SWIPE,
  DRAW_S,
  SINGLE_TAP,
}
