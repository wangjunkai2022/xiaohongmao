package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.util.h0;
import java.io.IOException;

/* compiled from: Sniffer.java */
/* loaded from: classes2.dex */
final class f {

    /* renamed from: c  reason: collision with root package name */
    private static final int f22505c = 1024;

    /* renamed from: d  reason: collision with root package name */
    private static final int f22506d = 440786851;

    /* renamed from: a  reason: collision with root package name */
    private final h0 f22507a = new h0(8);

    /* renamed from: b  reason: collision with root package name */
    private int f22508b;

    private long a(l lVar) throws IOException {
        int i4 = 0;
        lVar.s(this.f22507a.d(), 0, 1);
        int i10 = this.f22507a.d()[0] & 255;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int i11 = 128;
        int i12 = 0;
        while ((i10 & i11) == 0) {
            i11 >>= 1;
            i12++;
        }
        int i13 = i10 & (~i11);
        lVar.s(this.f22507a.d(), 1, i12);
        while (i4 < i12) {
            i4++;
            i13 = (this.f22507a.d()[i4] & 255) + (i13 << 8);
        }
        this.f22508b += i12 + 1;
        return i13;
    }

    public boolean b(l lVar) throws IOException {
        long a10;
        int i4;
        long length = lVar.getLength();
        long j4 = 1024;
        int i10 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        if (i10 != 0 && length <= 1024) {
            j4 = length;
        }
        int i11 = (int) j4;
        lVar.s(this.f22507a.d(), 0, 4);
        long I = this.f22507a.I();
        this.f22508b = 4;
        while (I != 440786851) {
            int i12 = this.f22508b + 1;
            this.f22508b = i12;
            if (i12 == i11) {
                return false;
            }
            lVar.s(this.f22507a.d(), 0, 1);
            I = ((I << 8) & (-256)) | (this.f22507a.d()[0] & 255);
        }
        long a11 = a(lVar);
        long j10 = this.f22508b;
        if (a11 == Long.MIN_VALUE) {
            return false;
        }
        if (i10 != 0 && j10 + a11 >= length) {
            return false;
        }
        while (true) {
            int i13 = this.f22508b;
            long j11 = j10 + a11;
            if (i13 >= j11) {
                return ((long) i13) == j11;
            } else if (a(lVar) != Long.MIN_VALUE && (a(lVar)) >= 0 && a10 <= 2147483647L) {
                if (i4 != 0) {
                    int i14 = (int) a10;
                    lVar.k(i14);
                    this.f22508b += i14;
                }
            }
        }
    }
}
