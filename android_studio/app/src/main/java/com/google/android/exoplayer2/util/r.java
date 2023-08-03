package com.google.android.exoplayer2.util;

import java.util.NoSuchElementException;

/* compiled from: IntArrayQueue.java */
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: f  reason: collision with root package name */
    private static final int f27681f = 16;

    /* renamed from: a  reason: collision with root package name */
    private int f27682a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f27683b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f27684c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int[] f27685d;

    /* renamed from: e  reason: collision with root package name */
    private int f27686e;

    public r() {
        int[] iArr = new int[16];
        this.f27685d = iArr;
        this.f27686e = iArr.length - 1;
    }

    private void d() {
        int[] iArr = this.f27685d;
        int length = iArr.length << 1;
        if (length >= 0) {
            int[] iArr2 = new int[length];
            int length2 = iArr.length;
            int i4 = this.f27682a;
            int i10 = length2 - i4;
            System.arraycopy(iArr, i4, iArr2, 0, i10);
            System.arraycopy(this.f27685d, 0, iArr2, i10, i4);
            this.f27682a = 0;
            this.f27683b = this.f27684c - 1;
            this.f27685d = iArr2;
            this.f27686e = iArr2.length - 1;
            return;
        }
        throw new IllegalStateException();
    }

    public void a(int i4) {
        if (this.f27684c == this.f27685d.length) {
            d();
        }
        int i10 = (this.f27683b + 1) & this.f27686e;
        this.f27683b = i10;
        this.f27685d[i10] = i4;
        this.f27684c++;
    }

    public int b() {
        return this.f27685d.length;
    }

    public void c() {
        this.f27682a = 0;
        this.f27683b = -1;
        this.f27684c = 0;
    }

    public boolean e() {
        return this.f27684c == 0;
    }

    public int f() {
        int i4 = this.f27684c;
        if (i4 != 0) {
            int[] iArr = this.f27685d;
            int i10 = this.f27682a;
            int i11 = iArr[i10];
            this.f27682a = (i10 + 1) & this.f27686e;
            this.f27684c = i4 - 1;
            return i11;
        }
        throw new NoSuchElementException();
    }

    public int g() {
        return this.f27684c;
    }
}
