package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.h0;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: OggPacket.java */
/* loaded from: classes2.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private final f f22892a = new f();

    /* renamed from: b  reason: collision with root package name */
    private final h0 f22893b = new h0(new byte[f.f22899n], 0);

    /* renamed from: c  reason: collision with root package name */
    private int f22894c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f22895d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22896e;

    private int a(int i4) {
        int i10;
        int i11 = 0;
        this.f22895d = 0;
        do {
            int i12 = this.f22895d;
            int i13 = i4 + i12;
            f fVar = this.f22892a;
            if (i13 >= fVar.f22909g) {
                break;
            }
            int[] iArr = fVar.f22912j;
            this.f22895d = i12 + 1;
            i10 = iArr[i12 + i4];
            i11 += i10;
        } while (i10 == 255);
        return i11;
    }

    public f b() {
        return this.f22892a;
    }

    public h0 c() {
        return this.f22893b;
    }

    public boolean d(l lVar) throws IOException {
        int i4;
        com.google.android.exoplayer2.util.a.i(lVar != null);
        if (this.f22896e) {
            this.f22896e = false;
            this.f22893b.O(0);
        }
        while (!this.f22896e) {
            if (this.f22894c < 0) {
                if (!this.f22892a.c(lVar) || !this.f22892a.a(lVar, true)) {
                    return false;
                }
                f fVar = this.f22892a;
                int i10 = fVar.f22910h;
                if ((fVar.f22904b & 1) == 1 && this.f22893b.f() == 0) {
                    i10 += a(0);
                    i4 = this.f22895d + 0;
                } else {
                    i4 = 0;
                }
                if (!n.d(lVar, i10)) {
                    return false;
                }
                this.f22894c = i4;
            }
            int a10 = a(this.f22894c);
            int i11 = this.f22894c + this.f22895d;
            if (a10 > 0) {
                h0 h0Var = this.f22893b;
                h0Var.c(h0Var.f() + a10);
                if (!n.c(lVar, this.f22893b.d(), this.f22893b.f(), a10)) {
                    return false;
                }
                h0 h0Var2 = this.f22893b;
                h0Var2.R(h0Var2.f() + a10);
                this.f22896e = this.f22892a.f22912j[i11 + (-1)] != 255;
            }
            if (i11 == this.f22892a.f22909g) {
                i11 = -1;
            }
            this.f22894c = i11;
        }
        return true;
    }

    public void e() {
        this.f22892a.b();
        this.f22893b.O(0);
        this.f22894c = -1;
        this.f22896e = false;
    }

    public void f() {
        if (this.f22893b.d().length == 65025) {
            return;
        }
        h0 h0Var = this.f22893b;
        h0Var.Q(Arrays.copyOf(h0Var.d(), Math.max((int) f.f22899n, this.f22893b.f())), this.f22893b.f());
    }
}
