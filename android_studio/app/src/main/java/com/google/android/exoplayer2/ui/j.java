package com.google.android.exoplayer2.ui;

import android.graphics.Color;
import androidx.annotation.ColorInt;

/* compiled from: HtmlUtils.java */
/* loaded from: classes2.dex */
final class j {
    private j() {
    }

    public static String a(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str).length());
        sb.append(".");
        sb.append(str);
        sb.append(",.");
        sb.append(str);
        sb.append(" *");
        return sb.toString();
    }

    public static String b(@ColorInt int i4) {
        return com.google.android.exoplayer2.util.z0.I("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i4)), Integer.valueOf(Color.green(i4)), Integer.valueOf(Color.blue(i4)), Double.valueOf(Color.alpha(i4) / 255.0d));
    }
}
