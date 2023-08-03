package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StreamReader.java */
/* loaded from: classes2.dex */
public abstract class i {

    /* renamed from: n  reason: collision with root package name */
    private static final int f22917n = 0;

    /* renamed from: o  reason: collision with root package name */
    private static final int f22918o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f22919p = 2;

    /* renamed from: q  reason: collision with root package name */
    private static final int f22920q = 3;

    /* renamed from: b  reason: collision with root package name */
    private e0 f22922b;

    /* renamed from: c  reason: collision with root package name */
    private m f22923c;

    /* renamed from: d  reason: collision with root package name */
    private g f22924d;

    /* renamed from: e  reason: collision with root package name */
    private long f22925e;

    /* renamed from: f  reason: collision with root package name */
    private long f22926f;

    /* renamed from: g  reason: collision with root package name */
    private long f22927g;

    /* renamed from: h  reason: collision with root package name */
    private int f22928h;

    /* renamed from: i  reason: collision with root package name */
    private int f22929i;

    /* renamed from: k  reason: collision with root package name */
    private long f22931k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f22932l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f22933m;

    /* renamed from: a  reason: collision with root package name */
    private final e f22921a = new e();

    /* renamed from: j  reason: collision with root package name */
    private b f22930j = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamReader.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        Format f22934a;

        /* renamed from: b  reason: collision with root package name */
        g f22935b;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StreamReader.java */
    /* loaded from: classes2.dex */
    public static final class c implements g {
        private c() {
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public long a(l lVar) {
            return -1L;
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public b0 b() {
            return new b0.b(com.google.android.exoplayer2.i.f23649b);
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public void c(long j4) {
        }
    }

    @EnsuresNonNull({"trackOutput", "extractorOutput"})
    private void a() {
        com.google.android.exoplayer2.util.a.k(this.f22922b);
        z0.k(this.f22923c);
    }

    @EnsuresNonNullIf(expression = {"setupData.format"}, result = true)
    private boolean h(l lVar) throws IOException {
        while (this.f22921a.d(lVar)) {
            this.f22931k = lVar.getPosition() - this.f22926f;
            if (!i(this.f22921a.c(), this.f22926f, this.f22930j)) {
                return true;
            }
            this.f22926f = lVar.getPosition();
        }
        this.f22928h = 3;
        return false;
    }

    @RequiresNonNull({"trackOutput"})
    private int j(l lVar) throws IOException {
        if (h(lVar)) {
            Format format = this.f22930j.f22934a;
            this.f22929i = format.sampleRate;
            if (!this.f22933m) {
                this.f22922b.d(format);
                this.f22933m = true;
            }
            g gVar = this.f22930j.f22935b;
            if (gVar != null) {
                this.f22924d = gVar;
            } else if (lVar.getLength() == -1) {
                this.f22924d = new c();
            } else {
                f b10 = this.f22921a.b();
                this.f22924d = new com.google.android.exoplayer2.extractor.ogg.a(this, this.f22926f, lVar.getLength(), b10.f22910h + b10.f22911i, b10.f22905c, (b10.f22904b & 4) != 0);
            }
            this.f22928h = 2;
            this.f22921a.f();
            return 0;
        }
        return -1;
    }

    @RequiresNonNull({"trackOutput", "oggSeeker", "extractorOutput"})
    private int k(l lVar, z zVar) throws IOException {
        long a10 = this.f22924d.a(lVar);
        if (a10 >= 0) {
            zVar.f23544a = a10;
            return 1;
        }
        if (a10 < -1) {
            e(-(a10 + 2));
        }
        if (!this.f22932l) {
            this.f22923c.q((b0) com.google.android.exoplayer2.util.a.k(this.f22924d.b()));
            this.f22932l = true;
        }
        if (this.f22931k <= 0 && !this.f22921a.d(lVar)) {
            this.f22928h = 3;
            return -1;
        }
        this.f22931k = 0L;
        h0 c10 = this.f22921a.c();
        long f10 = f(c10);
        if (f10 >= 0) {
            long j4 = this.f22927g;
            if (j4 + f10 >= this.f22925e) {
                long b10 = b(j4);
                this.f22922b.c(c10, c10.f());
                this.f22922b.e(b10, 1, c10.f(), 0, null);
                this.f22925e = -1L;
            }
        }
        this.f22927g += f10;
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long b(long j4) {
        return (j4 * 1000000) / this.f22929i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long c(long j4) {
        return (this.f22929i * j4) / 1000000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(m mVar, e0 e0Var) {
        this.f22923c = mVar;
        this.f22922b = e0Var;
        l(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(long j4) {
        this.f22927g = j4;
    }

    protected abstract long f(h0 h0Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int g(l lVar, z zVar) throws IOException {
        a();
        int i4 = this.f22928h;
        if (i4 != 0) {
            if (i4 == 1) {
                lVar.o((int) this.f22926f);
                this.f22928h = 2;
                return 0;
            } else if (i4 == 2) {
                z0.k(this.f22924d);
                return k(lVar, zVar);
            } else if (i4 == 3) {
                return -1;
            } else {
                throw new IllegalStateException();
            }
        }
        return j(lVar);
    }

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected abstract boolean i(h0 h0Var, long j4, b bVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(boolean z9) {
        if (z9) {
            this.f22930j = new b();
            this.f22926f = 0L;
            this.f22928h = 0;
        } else {
            this.f22928h = 1;
        }
        this.f22925e = -1L;
        this.f22927g = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(long j4, long j10) {
        this.f22921a.e();
        if (j4 == 0) {
            l(!this.f22932l);
        } else if (this.f22928h != 0) {
            this.f22925e = c(j10);
            ((g) z0.k(this.f22924d)).c(this.f22925e);
            this.f22928h = 2;
        }
    }
}
