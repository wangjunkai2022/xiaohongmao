package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.util.w;

/* compiled from: TrackEncryptionBox.java */
/* loaded from: classes2.dex */
public final class p {

    /* renamed from: f  reason: collision with root package name */
    private static final String f22823f = "TrackEncryptionBox";

    /* renamed from: a  reason: collision with root package name */
    public final boolean f22824a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f22825b;

    /* renamed from: c  reason: collision with root package name */
    public final e0.a f22826c;

    /* renamed from: d  reason: collision with root package name */
    public final int f22827d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f22828e;

    public p(boolean z9, @Nullable String str, int i4, byte[] bArr, int i10, int i11, @Nullable byte[] bArr2) {
        com.google.android.exoplayer2.util.a.a((bArr2 == null) ^ (i4 == 0));
        this.f22824a = z9;
        this.f22825b = str;
        this.f22827d = i4;
        this.f22828e = bArr2;
        this.f22826c = new e0.a(a(str), bArr, i10, i11);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int a(@Nullable String str) {
        if (str == null) {
            return 1;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals(com.google.android.exoplayer2.i.F1)) {
                    c10 = 0;
                    break;
                }
                break;
            case 3046671:
                if (str.equals(com.google.android.exoplayer2.i.H1)) {
                    c10 = 1;
                    break;
                }
                break;
            case 3049879:
                if (str.equals(com.google.android.exoplayer2.i.E1)) {
                    c10 = 2;
                    break;
                }
                break;
            case 3049895:
                if (str.equals(com.google.android.exoplayer2.i.G1)) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 2;
            case 2:
            case 3:
                break;
            default:
                StringBuilder sb = new StringBuilder(str.length() + 68);
                sb.append("Unsupported protection scheme type '");
                sb.append(str);
                sb.append("'. Assuming AES-CTR crypto mode.");
                w.n(f22823f, sb.toString());
                break;
        }
        return 1;
    }
}
