package com.google.android.exoplayer2.upstream.crypto;

import androidx.annotation.Nullable;

/* compiled from: CryptoUtil.java */
/* loaded from: classes2.dex */
final class d {
    private d() {
    }

    public static long a(@Nullable String str) {
        long j4 = 0;
        if (str == null) {
            return 0L;
        }
        for (int i4 = 0; i4 < str.length(); i4++) {
            long charAt = j4 ^ str.charAt(i4);
            j4 = charAt + (charAt << 1) + (charAt << 4) + (charAt << 5) + (charAt << 7) + (charAt << 8) + (charAt << 40);
        }
        return j4;
    }
}
