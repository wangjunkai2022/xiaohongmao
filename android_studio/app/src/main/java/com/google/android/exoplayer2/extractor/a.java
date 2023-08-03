package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* compiled from: BinarySearchSeeker.java */
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: e  reason: collision with root package name */
    private static final long f22062e = 262144;

    /* renamed from: a  reason: collision with root package name */
    protected final C0161a f22063a;

    /* renamed from: b  reason: collision with root package name */
    protected final f f22064b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    protected c f22065c;

    /* renamed from: d  reason: collision with root package name */
    private final int f22066d;

    /* compiled from: BinarySearchSeeker.java */
    /* renamed from: com.google.android.exoplayer2.extractor.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0161a implements b0 {

        /* renamed from: d  reason: collision with root package name */
        private final d f22067d;

        /* renamed from: e  reason: collision with root package name */
        private final long f22068e;

        /* renamed from: f  reason: collision with root package name */
        private final long f22069f;

        /* renamed from: g  reason: collision with root package name */
        private final long f22070g;

        /* renamed from: h  reason: collision with root package name */
        private final long f22071h;

        /* renamed from: i  reason: collision with root package name */
        private final long f22072i;

        /* renamed from: j  reason: collision with root package name */
        private final long f22073j;

        public C0161a(d dVar, long j4, long j10, long j11, long j12, long j13, long j14) {
            this.f22067d = dVar;
            this.f22068e = j4;
            this.f22069f = j10;
            this.f22070g = j11;
            this.f22071h = j12;
            this.f22072i = j13;
            this.f22073j = j14;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public b0.a e(long j4) {
            return new b0.a(new c0(j4, c.h(this.f22067d.a(j4), this.f22069f, this.f22070g, this.f22071h, this.f22072i, this.f22073j)));
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public boolean g() {
            return true;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public long i() {
            return this.f22068e;
        }

        public long k(long j4) {
            return this.f22067d.a(j4);
        }
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes2.dex */
    public static final class b implements d {
        @Override // com.google.android.exoplayer2.extractor.a.d
        public long a(long j4) {
            return j4;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final long f22074a;

        /* renamed from: b  reason: collision with root package name */
        private final long f22075b;

        /* renamed from: c  reason: collision with root package name */
        private final long f22076c;

        /* renamed from: d  reason: collision with root package name */
        private long f22077d;

        /* renamed from: e  reason: collision with root package name */
        private long f22078e;

        /* renamed from: f  reason: collision with root package name */
        private long f22079f;

        /* renamed from: g  reason: collision with root package name */
        private long f22080g;

        /* renamed from: h  reason: collision with root package name */
        private long f22081h;

        protected c(long j4, long j10, long j11, long j12, long j13, long j14, long j15) {
            this.f22074a = j4;
            this.f22075b = j10;
            this.f22077d = j11;
            this.f22078e = j12;
            this.f22079f = j13;
            this.f22080g = j14;
            this.f22076c = j15;
            this.f22081h = h(j10, j11, j12, j13, j14, j15);
        }

        protected static long h(long j4, long j10, long j11, long j12, long j13, long j14) {
            if (j12 + 1 >= j13 || j10 + 1 >= j11) {
                return j12;
            }
            long j15 = ((float) (j4 - j10)) * (((float) (j13 - j12)) / ((float) (j11 - j10)));
            return z0.u(((j15 + j12) - j14) - (j15 / 20), j12, j13 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long i() {
            return this.f22080g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long j() {
            return this.f22079f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long k() {
            return this.f22081h;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long l() {
            return this.f22074a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long m() {
            return this.f22075b;
        }

        private void n() {
            this.f22081h = h(this.f22075b, this.f22077d, this.f22078e, this.f22079f, this.f22080g, this.f22076c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(long j4, long j10) {
            this.f22078e = j4;
            this.f22080g = j10;
            n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(long j4, long j10) {
            this.f22077d = j4;
            this.f22079f = j10;
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes2.dex */
    public interface d {
        long a(long j4);
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: d  reason: collision with root package name */
        public static final int f22082d = 0;

        /* renamed from: e  reason: collision with root package name */
        public static final int f22083e = -1;

        /* renamed from: f  reason: collision with root package name */
        public static final int f22084f = -2;

        /* renamed from: g  reason: collision with root package name */
        public static final int f22085g = -3;

        /* renamed from: h  reason: collision with root package name */
        public static final e f22086h = new e(-3, com.google.android.exoplayer2.i.f23649b, -1);

        /* renamed from: a  reason: collision with root package name */
        private final int f22087a;

        /* renamed from: b  reason: collision with root package name */
        private final long f22088b;

        /* renamed from: c  reason: collision with root package name */
        private final long f22089c;

        private e(int i4, long j4, long j10) {
            this.f22087a = i4;
            this.f22088b = j4;
            this.f22089c = j10;
        }

        public static e d(long j4, long j10) {
            return new e(-1, j4, j10);
        }

        public static e e(long j4) {
            return new e(0, com.google.android.exoplayer2.i.f23649b, j4);
        }

        public static e f(long j4, long j10) {
            return new e(-2, j4, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes2.dex */
    public interface f {
        e a(l lVar, long j4) throws IOException;

        void b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(d dVar, f fVar, long j4, long j10, long j11, long j12, long j13, long j14, int i4) {
        this.f22064b = fVar;
        this.f22066d = i4;
        this.f22063a = new C0161a(dVar, j4, j10, j11, j12, j13, j14);
    }

    protected c a(long j4) {
        return new c(j4, this.f22063a.k(j4), this.f22063a.f22069f, this.f22063a.f22070g, this.f22063a.f22071h, this.f22063a.f22072i, this.f22063a.f22073j);
    }

    public final b0 b() {
        return this.f22063a;
    }

    public int c(l lVar, z zVar) throws IOException {
        while (true) {
            c cVar = (c) com.google.android.exoplayer2.util.a.k(this.f22065c);
            long j4 = cVar.j();
            long i4 = cVar.i();
            long k10 = cVar.k();
            if (i4 - j4 <= this.f22066d) {
                e(false, j4);
                return g(lVar, j4, zVar);
            } else if (!i(lVar, k10)) {
                return g(lVar, k10, zVar);
            } else {
                lVar.h();
                e a10 = this.f22064b.a(lVar, cVar.m());
                int i10 = a10.f22087a;
                if (i10 == -3) {
                    e(false, k10);
                    return g(lVar, k10, zVar);
                } else if (i10 == -2) {
                    cVar.p(a10.f22088b, a10.f22089c);
                } else if (i10 != -1) {
                    if (i10 == 0) {
                        i(lVar, a10.f22089c);
                        e(true, a10.f22089c);
                        return g(lVar, a10.f22089c, zVar);
                    }
                    throw new IllegalStateException("Invalid case");
                } else {
                    cVar.o(a10.f22088b, a10.f22089c);
                }
            }
        }
    }

    public final boolean d() {
        return this.f22065c != null;
    }

    protected final void e(boolean z9, long j4) {
        this.f22065c = null;
        this.f22064b.b();
        f(z9, j4);
    }

    protected void f(boolean z9, long j4) {
    }

    protected final int g(l lVar, long j4, z zVar) {
        if (j4 == lVar.getPosition()) {
            return 0;
        }
        zVar.f23544a = j4;
        return 1;
    }

    public final void h(long j4) {
        c cVar = this.f22065c;
        if (cVar == null || cVar.l() != j4) {
            this.f22065c = a(j4);
        }
    }

    protected final boolean i(l lVar, long j4) throws IOException {
        long position = j4 - lVar.getPosition();
        if (position < 0 || position > 262144) {
            return false;
        }
        lVar.o((int) position);
        return true;
    }
}
