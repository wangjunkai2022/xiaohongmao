package com.google.android.exoplayer2.util;

import java.util.Arrays;

/* compiled from: LongArray.java */
/* loaded from: classes2.dex */
public final class x {

    /* renamed from: c  reason: collision with root package name */
    private static final int f27731c = 32;

    /* renamed from: a  reason: collision with root package name */
    private int f27732a;

    /* renamed from: b  reason: collision with root package name */
    private long[] f27733b;

    public x() {
        this(32);
    }

    public void a(long j4) {
        int i4 = this.f27732a;
        long[] jArr = this.f27733b;
        if (i4 == jArr.length) {
            this.f27733b = Arrays.copyOf(jArr, i4 * 2);
        }
        long[] jArr2 = this.f27733b;
        int i10 = this.f27732a;
        this.f27732a = i10 + 1;
        jArr2[i10] = j4;
    }

    public long b(int i4) {
        if (i4 >= 0 && i4 < this.f27732a) {
            return this.f27733b[i4];
        }
        int i10 = this.f27732a;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Invalid index ");
        sb.append(i4);
        sb.append(", size is ");
        sb.append(i10);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public int c() {
        return this.f27732a;
    }

    public long[] d() {
        return Arrays.copyOf(this.f27733b, this.f27732a);
    }

    public x(int i4) {
        this.f27733b = new long[i4];
    }
}
