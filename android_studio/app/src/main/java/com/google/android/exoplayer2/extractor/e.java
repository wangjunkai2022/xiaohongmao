package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.util.z0;
import java.util.Arrays;

/* compiled from: ChunkIndex.java */
/* loaded from: classes2.dex */
public final class e implements b0 {

    /* renamed from: d  reason: collision with root package name */
    public final int f22133d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f22134e;

    /* renamed from: f  reason: collision with root package name */
    public final long[] f22135f;

    /* renamed from: g  reason: collision with root package name */
    public final long[] f22136g;

    /* renamed from: h  reason: collision with root package name */
    public final long[] f22137h;

    /* renamed from: i  reason: collision with root package name */
    private final long f22138i;

    public e(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f22134e = iArr;
        this.f22135f = jArr;
        this.f22136g = jArr2;
        this.f22137h = jArr3;
        int length = iArr.length;
        this.f22133d = length;
        if (length > 0) {
            this.f22138i = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f22138i = 0L;
        }
    }

    public int a(long j4) {
        return z0.j(this.f22137h, j4, true, true);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a e(long j4) {
        int a10 = a(j4);
        c0 c0Var = new c0(this.f22137h[a10], this.f22135f[a10]);
        if (c0Var.f22124a < j4 && a10 != this.f22133d - 1) {
            int i4 = a10 + 1;
            return new b0.a(c0Var, new c0(this.f22137h[i4], this.f22135f[i4]));
        }
        return new b0.a(c0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean g() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long i() {
        return this.f22138i;
    }

    public String toString() {
        int i4 = this.f22133d;
        String arrays = Arrays.toString(this.f22134e);
        String arrays2 = Arrays.toString(this.f22135f);
        String arrays3 = Arrays.toString(this.f22137h);
        String arrays4 = Arrays.toString(this.f22136g);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 71 + String.valueOf(arrays2).length() + String.valueOf(arrays3).length() + String.valueOf(arrays4).length());
        sb.append("ChunkIndex(length=");
        sb.append(i4);
        sb.append(", sizes=");
        sb.append(arrays);
        sb.append(", offsets=");
        sb.append(arrays2);
        sb.append(", timeUs=");
        sb.append(arrays3);
        sb.append(", durationsUs=");
        sb.append(arrays4);
        sb.append(")");
        return sb.toString();
    }
}
