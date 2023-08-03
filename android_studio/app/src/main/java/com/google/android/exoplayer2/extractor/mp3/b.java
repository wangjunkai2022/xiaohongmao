package com.google.android.exoplayer2.extractor.mp3;

import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.util.x;
import com.google.android.exoplayer2.util.z0;

/* compiled from: IndexSeeker.java */
/* loaded from: classes2.dex */
final class b implements g {
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    static final long f22515h = 100000;

    /* renamed from: d  reason: collision with root package name */
    private final long f22516d;

    /* renamed from: e  reason: collision with root package name */
    private final x f22517e;

    /* renamed from: f  reason: collision with root package name */
    private final x f22518f;

    /* renamed from: g  reason: collision with root package name */
    private long f22519g;

    public b(long j4, long j10, long j11) {
        this.f22519g = j4;
        this.f22516d = j11;
        x xVar = new x();
        this.f22517e = xVar;
        x xVar2 = new x();
        this.f22518f = xVar2;
        xVar.a(0L);
        xVar2.a(j10);
    }

    public boolean a(long j4) {
        x xVar = this.f22517e;
        return j4 - xVar.b(xVar.c() - 1) < f22515h;
    }

    public void b(long j4, long j10) {
        if (a(j4)) {
            return;
        }
        this.f22517e.a(j4);
        this.f22518f.a(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(long j4) {
        this.f22519g = j4;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a e(long j4) {
        int g4 = z0.g(this.f22517e, j4, true, true);
        c0 c0Var = new c0(this.f22517e.b(g4), this.f22518f.b(g4));
        if (c0Var.f22124a != j4 && g4 != this.f22517e.c() - 1) {
            int i4 = g4 + 1;
            return new b0.a(c0Var, new c0(this.f22517e.b(i4), this.f22518f.b(i4)));
        }
        return new b0.a(c0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long f() {
        return this.f22516d;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean g() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long h(long j4) {
        return this.f22517e.b(z0.g(this.f22518f, j4, true, true));
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long i() {
        return this.f22519g;
    }
}
