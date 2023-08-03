package com.google.android.exoplayer2.extractor.ogg;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.z0;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultOggSeeker.java */
/* loaded from: classes2.dex */
public final class a implements g {

    /* renamed from: m  reason: collision with root package name */
    private static final int f22857m = 72000;

    /* renamed from: n  reason: collision with root package name */
    private static final int f22858n = 100000;

    /* renamed from: o  reason: collision with root package name */
    private static final int f22859o = 30000;

    /* renamed from: p  reason: collision with root package name */
    private static final int f22860p = 0;

    /* renamed from: q  reason: collision with root package name */
    private static final int f22861q = 1;

    /* renamed from: r  reason: collision with root package name */
    private static final int f22862r = 2;

    /* renamed from: s  reason: collision with root package name */
    private static final int f22863s = 3;

    /* renamed from: t  reason: collision with root package name */
    private static final int f22864t = 4;

    /* renamed from: a  reason: collision with root package name */
    private final f f22865a;

    /* renamed from: b  reason: collision with root package name */
    private final long f22866b;

    /* renamed from: c  reason: collision with root package name */
    private final long f22867c;

    /* renamed from: d  reason: collision with root package name */
    private final i f22868d;

    /* renamed from: e  reason: collision with root package name */
    private int f22869e;

    /* renamed from: f  reason: collision with root package name */
    private long f22870f;

    /* renamed from: g  reason: collision with root package name */
    private long f22871g;

    /* renamed from: h  reason: collision with root package name */
    private long f22872h;

    /* renamed from: i  reason: collision with root package name */
    private long f22873i;

    /* renamed from: j  reason: collision with root package name */
    private long f22874j;

    /* renamed from: k  reason: collision with root package name */
    private long f22875k;

    /* renamed from: l  reason: collision with root package name */
    private long f22876l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultOggSeeker.java */
    /* loaded from: classes2.dex */
    public final class b implements b0 {
        private b() {
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public b0.a e(long j4) {
            return new b0.a(new c0(j4, z0.u((a.this.f22866b + ((a.this.f22868d.c(j4) * (a.this.f22867c - a.this.f22866b)) / a.this.f22870f)) - 30000, a.this.f22866b, a.this.f22867c - 1)));
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public boolean g() {
            return true;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public long i() {
            return a.this.f22868d.b(a.this.f22870f);
        }
    }

    public a(i iVar, long j4, long j10, long j11, long j12, boolean z9) {
        com.google.android.exoplayer2.util.a.a(j4 >= 0 && j10 > j4);
        this.f22868d = iVar;
        this.f22866b = j4;
        this.f22867c = j10;
        if (j11 != j10 - j4 && !z9) {
            this.f22869e = 0;
        } else {
            this.f22870f = j12;
            this.f22869e = 4;
        }
        this.f22865a = new f();
    }

    private long i(l lVar) throws IOException {
        if (this.f22873i == this.f22874j) {
            return -1L;
        }
        long position = lVar.getPosition();
        if (!this.f22865a.d(lVar, this.f22874j)) {
            long j4 = this.f22873i;
            if (j4 != position) {
                return j4;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f22865a.a(lVar, false);
        lVar.h();
        long j10 = this.f22872h;
        f fVar = this.f22865a;
        long j11 = fVar.f22905c;
        long j12 = j10 - j11;
        int i4 = fVar.f22910h + fVar.f22911i;
        if (0 > j12 || j12 >= 72000) {
            int i10 = (j12 > 0L ? 1 : (j12 == 0L ? 0 : -1));
            if (i10 < 0) {
                this.f22874j = position;
                this.f22876l = j11;
            } else {
                this.f22873i = lVar.getPosition() + i4;
                this.f22875k = this.f22865a.f22905c;
            }
            long j13 = this.f22874j;
            long j14 = this.f22873i;
            if (j13 - j14 < 100000) {
                this.f22874j = j14;
                return j14;
            }
            long j15 = i4 * (i10 <= 0 ? 2L : 1L);
            long j16 = this.f22874j;
            long j17 = this.f22873i;
            return z0.u((lVar.getPosition() - j15) + ((j12 * (j16 - j17)) / (this.f22876l - this.f22875k)), j17, j16 - 1);
        }
        return -1L;
    }

    private void k(l lVar) throws IOException {
        while (true) {
            this.f22865a.c(lVar);
            this.f22865a.a(lVar, false);
            f fVar = this.f22865a;
            if (fVar.f22905c > this.f22872h) {
                lVar.h();
                return;
            }
            lVar.o(fVar.f22910h + fVar.f22911i);
            this.f22873i = lVar.getPosition();
            this.f22875k = this.f22865a.f22905c;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.g
    public long a(l lVar) throws IOException {
        int i4 = this.f22869e;
        if (i4 == 0) {
            long position = lVar.getPosition();
            this.f22871g = position;
            this.f22869e = 1;
            long j4 = this.f22867c - 65307;
            if (j4 > position) {
                return j4;
            }
        } else if (i4 != 1) {
            if (i4 == 2) {
                long i10 = i(lVar);
                if (i10 != -1) {
                    return i10;
                }
                this.f22869e = 3;
            } else if (i4 != 3) {
                if (i4 == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            k(lVar);
            this.f22869e = 4;
            return -(this.f22875k + 2);
        }
        this.f22870f = j(lVar);
        this.f22869e = 4;
        return this.f22871g;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.g
    public void c(long j4) {
        this.f22872h = z0.u(j4, 0L, this.f22870f - 1);
        this.f22869e = 2;
        this.f22873i = this.f22866b;
        this.f22874j = this.f22867c;
        this.f22875k = 0L;
        this.f22876l = this.f22870f;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.g
    @Nullable
    /* renamed from: h */
    public b b() {
        if (this.f22870f != 0) {
            return new b();
        }
        return null;
    }

    @VisibleForTesting
    long j(l lVar) throws IOException {
        this.f22865a.b();
        if (this.f22865a.c(lVar)) {
            this.f22865a.a(lVar, false);
            f fVar = this.f22865a;
            lVar.o(fVar.f22910h + fVar.f22911i);
            long j4 = this.f22865a.f22905c;
            while (true) {
                f fVar2 = this.f22865a;
                if ((fVar2.f22904b & 4) == 4 || !fVar2.c(lVar) || lVar.getPosition() >= this.f22867c || !this.f22865a.a(lVar, true)) {
                    break;
                }
                f fVar3 = this.f22865a;
                if (!n.d(lVar, fVar3.f22910h + fVar3.f22911i)) {
                    break;
                }
                j4 = this.f22865a.f22905c;
            }
            return j4;
        }
        throw new EOFException();
    }
}
