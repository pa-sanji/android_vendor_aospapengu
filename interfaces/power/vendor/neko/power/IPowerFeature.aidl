/*
 * SPDX-FileCopyrightText: Paranoid Android
 * SPDX-License-Identifier: Apache-2.0
 */

package vendor.neko.power;

import vendor.neko.power.Feature;

@VintfStability
interface IPowerFeature {
    oneway void setFeature(Feature feature, boolean enabled);
}
