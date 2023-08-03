package com.google.android.exoplayer2.video;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.h0;

/* compiled from: DolbyVisionConfig.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final int f27889a;

    /* renamed from: b  reason: collision with root package name */
    public final int f27890b;

    /* renamed from: c  reason: collision with root package name */
    public final String f27891c;

    private c(int i4, int i10, String str) {
        this.f27889a = i4;
        this.f27890b = i10;
        this.f27891c = str;
    }

    @Nullable
    public static c a(h0 h0Var) {
        String str;
        h0Var.T(2);
        int G = h0Var.G();
        int i4 = G >> 1;
        int G2 = ((h0Var.G() >> 3) & 31) | ((G & 1) << 5);
        if (i4 == 4 || i4 == 5 || i4 == 7) {
            str = "dvhe";
        } else if (i4 == 8) {
            str = com.coremedia.iso.boxes.sampleentry.h.C;
        } else if (i4 != 9) {
            return null;
        } else {
            str = com.coremedia.iso.boxes.sampleentry.h.f10370z;
        }
        String str2 = G2 < 10 ? ".0" : ".";
        StringBuilder sb = new StringBuilder(str.length() + 24 + str2.length());
        sb.append(str);
        sb.append(".0");
        sb.append(i4);
        sb.append(str2);
        sb.append(G2);
        return new c(i4, G2, sb.toString());
    }
}
