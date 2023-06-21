/*
Copyright 2019 @foostan
Copyright 2022 Luis Pereira <@easilok>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
#include QMK_KEYBOARD_H

// Each layer gets a name for readability, which is then used in the keymap matrix below.
// The underscores don't mean anything - you can have a layer called STUFF or any other name.
// Layer names don't all need to be of the same length, obviously, and you can also skip them
// entirely and just use numbers.
enum {
    _BASE,
    _SYM,
    _NUM,
    _META
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
	[_BASE] = LAYOUT_split_3x6_3(
        KC_TAB,         KC_Q, KC_W, KC_E,           KC_R,           KC_T,           KC_Y,   KC_U,         KC_I,           KC_O,   KC_P,     KC_BSPC,
        LSFT_T(KC_ESC), KC_A, KC_S, LALT_T(KC_D),   LSFT_T(KC_F),   LGUI_T(KC_G),   KC_H,   RSFT_T(KC_J), LALT_T(KC_K),   KC_L,   KC_SCLN,  RSFT_T(KC_RBRC),
        KC_LCTL,        KC_Z, KC_X, KC_C,           KC_V,           KC_B,           KC_N,   KC_M,         KC_COMM,        KC_DOT, KC_SLSH,  KC_BSLS,
                                    KC_LGUI,        MO(_SYM),          KC_BSPC,        KC_SPC, MO(_NUM),        LALT_T(KC_ENT)
    ),
	[_NUM] = LAYOUT_split_3x6_3(
        KC_GRV,  KC_1, KC_2, KC_3,       KC_4,    KC_5,    KC_6,           KC_7,    KC_8,    KC_9,    KC_0,    KC_BSPC,
        KC_LSFT, KC_4, KC_5, KC_6,      KC_0,    KC_NUBS, KC_RBRC,        KC_LBRC, KC_MINS, KC_SLSH, KC_QUOT, KC_RALT,
        KC_LCTL, KC_7, KC_8, KC_9,      KC_HOME, KC_END,  KC_LEFT,        KC_DOWN, KC_UP,   KC_RGHT, KC_EQL,  LALT_T(KC_ENT),
                             KC_LGUI,   MO(_META),   KC_LSFT, RALT_T(KC_SPC), KC_TRNS, KC_LALT
    ),
	[_SYM] = LAYOUT_split_3x6_3(
        KC_TAB,  KC_MINS,       KC_NUBS, LSFT(KC_NUBS), LSFT(KC_2), KC_DOT,     LSFT(KC_SLSH), KC_CIRC, RALT(KC_8), RALT(KC_9), KC_PERC,    KC_BSPC,
        KC_LSFT, KC_EXLM,       KC_PMNS, KC_PPLS,       KC_RPRN,    KC_HASH,    LSFT(KC_GRV),  KC_GT,   KC_ASTR,    KC_LPRN,    KC_UNDS,    KC_DEL,
        KC_LCTL, LSFT(KC_NUHS), KC_PSLS, KC_PAST,       KC_GRV,     RALT(KC_2), KC_NUHS,       KC_DLR,  RALT(KC_7), RALT(KC_0), RALT(KC_E), KC_ENT,
                                         KC_LGUI,       KC_TRNS,    KC_LSFT,    KC_SPC,        MO(_META),   KC_LALT
    ),
	[_META] = LAYOUT_split_3x6_3(
        KC_F1,    KC_F2,   KC_F3,   KC_F4,   KC_F5,   KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_F11,  KC_F12,
        RGB_RMOD, RGB_MOD, RGB_HUI, RGB_SAI, RGB_VAI, KC_NO,   KC_VOLU, KC_MPRV, KC_MPLY, KC_MNXT, KC_PGUP, KC_NO,
        KC_LCTL,  RGB_TOG, RGB_HUD, RGB_SAD, RGB_VAD, KC_NO,   KC_VOLD, KC_NO,   KC_NO,   KC_NO,   KC_PGDN, KC_ENT,
                                    KC_LGUI, KC_TRNS, KC_LSFT, KC_SPC,  KC_TRNS, KC_LALT
    )
};




