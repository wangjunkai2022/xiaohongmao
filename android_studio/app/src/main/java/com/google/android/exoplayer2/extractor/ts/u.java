package com.google.android.exoplayer2.extractor.ts;

import java.util.Arrays;

/* compiled from: NalUnitTargetBuffer.java */
/* loaded from: classes2.dex */
final class u {

    /* renamed from: a  reason: collision with root package name */
    private final int f23427a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f23428b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f23429c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f23430d;

    /* renamed from: e  reason: collision with root package name */
    public int f23431e;

    public u(int i4, int i10) {
        this.f23427a = i4;
        byte[] bArr = new byte[i10 + 3];
        this.f23430d = bArr;
        bArr[2] = 1;
    }

    public void a(byte[] bArr, int i4, int i10) {
        if (this.f23428b) {
            int i11 = i10 - i4;
            byte[] bArr2 = this.f23430d;
            int length = bArr2.length;
            int i12 = this.f23431e;
            if (length < i12 + i11) {
                this.f23430d = Arrays.copyOf(bArr2, (i12 + i11) * 2);
            }
            System.arraycopy(bArr, i4, this.f23430d, this.f23431e, i11);
            this.f23431e += i11;
        }
    }

    public boolean b(int i4) {
        if (this.f23428b) {
            this.f23431e -= i4;
            this.f23428b = false;
            this.f23429c = true;
            return true;
        }
        return false;
    }

    public boolean c() {
        return this.f23429c;
    }

    public void d() {
        this.f23428b = false;
        this.f23429c = false;
    }

    public void e(int i4) {
        com.google.android.exoplayer2.util.a.i(!this.f23428b);
        boolean z9 = i4 == this.f23427a;
        this.f23428b = z9;
        if (z9) {
            this.f23431e = 3;
            this.f23429c = false;
        }
    }
}
