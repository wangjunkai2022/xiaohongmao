package com.google.android.exoplayer2.text.ssa;

import android.text.TextUtils;
import androidx.annotation.Nullable;

/* compiled from: SsaDialogueFormat.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final int f25623a;

    /* renamed from: b  reason: collision with root package name */
    public final int f25624b;

    /* renamed from: c  reason: collision with root package name */
    public final int f25625c;

    /* renamed from: d  reason: collision with root package name */
    public final int f25626d;

    /* renamed from: e  reason: collision with root package name */
    public final int f25627e;

    private b(int i4, int i10, int i11, int i12, int i13) {
        this.f25623a = i4;
        this.f25624b = i10;
        this.f25625c = i11;
        this.f25626d = i12;
        this.f25627e = i13;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    public static b a(String str) {
        char c10;
        com.google.android.exoplayer2.util.a.a(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i4 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < split.length; i13++) {
            String g4 = com.google.common.base.c.g(split[i13].trim());
            g4.hashCode();
            switch (g4.hashCode()) {
                case 100571:
                    if (g4.equals(com.google.android.exoplayer2.text.ttml.d.f25727p0)) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3556653:
                    if (g4.equals("text")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109757538:
                    if (g4.equals(com.google.android.exoplayer2.text.ttml.d.f25725o0)) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109780401:
                    if (g4.equals(com.google.android.exoplayer2.text.ttml.d.f25736u)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    i10 = i13;
                    break;
                case 1:
                    i12 = i13;
                    break;
                case 2:
                    i4 = i13;
                    break;
                case 3:
                    i11 = i13;
                    break;
            }
        }
        if (i4 == -1 || i10 == -1 || i12 == -1) {
            return null;
        }
        return new b(i4, i10, i11, i12, split.length);
    }
}
