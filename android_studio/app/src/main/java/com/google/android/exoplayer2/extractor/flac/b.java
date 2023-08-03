package com.google.android.exoplayer2.extractor.flac;

import com.google.android.exoplayer2.extractor.a;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.extractor.u;
import java.io.IOException;
import java.util.Objects;

/* compiled from: FlacBinarySearchSeeker.java */
/* loaded from: classes2.dex */
final class b extends com.google.android.exoplayer2.extractor.a {

    /* compiled from: FlacBinarySearchSeeker.java */
    /* renamed from: com.google.android.exoplayer2.extractor.flac.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0162b implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final u f22157a;

        /* renamed from: b  reason: collision with root package name */
        private final int f22158b;

        /* renamed from: c  reason: collision with root package name */
        private final r.a f22159c;

        private long c(l lVar) throws IOException {
            while (lVar.j() < lVar.getLength() - 6 && !r.h(lVar, this.f22157a, this.f22158b, this.f22159c)) {
                lVar.k(1);
            }
            if (lVar.j() >= lVar.getLength() - 6) {
                lVar.k((int) (lVar.getLength() - lVar.j()));
                return this.f22157a.f23482j;
            }
            return this.f22159c.f22947a;
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public a.e a(l lVar, long j4) throws IOException {
            long position = lVar.getPosition();
            long c10 = c(lVar);
            long j10 = lVar.j();
            lVar.k(Math.max(6, this.f22157a.f23475c));
            long c11 = c(lVar);
            long j11 = lVar.j();
            if (c10 > j4 || c11 <= j4) {
                if (c11 <= j4) {
                    return a.e.f(c11, j11);
                }
                return a.e.d(c10, position);
            }
            return a.e.e(j10);
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public /* synthetic */ void b() {
            com.google.android.exoplayer2.extractor.b.a(this);
        }

        private C0162b(u uVar, int i4) {
            this.f22157a = uVar;
            this.f22158b = i4;
            this.f22159c = new r.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(final u uVar, int i4, long j4, long j10) {
        super(new a.d() { // from class: com.google.android.exoplayer2.extractor.flac.a
            @Override // com.google.android.exoplayer2.extractor.a.d
            public final long a(long j11) {
                return u.this.l(j11);
            }
        }, new C0162b(uVar, i4), uVar.h(), 0L, uVar.f23482j, j4, j10, uVar.e(), Math.max(6, uVar.f23475c));
        Objects.requireNonNull(uVar);
    }
}
