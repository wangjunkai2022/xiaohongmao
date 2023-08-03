package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;

/* loaded from: classes2.dex */
class MaxInputValidator implements InputFilter {
    private int max;

    public MaxInputValidator(int i4) {
        this.max = i4;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i4, int i10, Spanned spanned, int i11, int i12) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i11, i12, charSequence.subSequence(i4, i10).toString());
            if (Integer.parseInt(sb.toString()) <= this.max) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }

    public int getMax() {
        return this.max;
    }

    public void setMax(int i4) {
        this.max = i4;
    }
}
