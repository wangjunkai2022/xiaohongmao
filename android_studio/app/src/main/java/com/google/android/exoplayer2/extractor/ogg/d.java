package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.util.h0;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* compiled from: OggExtractor.java */
/* loaded from: classes2.dex */
public class d implements com.google.android.exoplayer2.extractor.k {

    /* renamed from: g  reason: collision with root package name */
    public static final q f22887g = c.f22886b;

    /* renamed from: h  reason: collision with root package name */
    private static final int f22888h = 8;

    /* renamed from: d  reason: collision with root package name */
    private m f22889d;

    /* renamed from: e  reason: collision with root package name */
    private i f22890e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22891f;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.k[] f() {
        return new com.google.android.exoplayer2.extractor.k[]{new d()};
    }

    private static h0 g(h0 h0Var) {
        h0Var.S(0);
        return h0Var;
    }

    @EnsuresNonNullIf(expression = {"streamReader"}, result = true)
    private boolean h(l lVar) throws IOException {
        f fVar = new f();
        if (fVar.a(lVar, true) && (fVar.f22904b & 2) == 2) {
            int min = Math.min(fVar.f22911i, 8);
            h0 h0Var = new h0(min);
            lVar.s(h0Var.d(), 0, min);
            if (b.p(g(h0Var))) {
                this.f22890e = new b();
            } else if (j.r(g(h0Var))) {
                this.f22890e = new j();
            } else if (h.o(g(h0Var))) {
                this.f22890e = new h();
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        i iVar = this.f22890e;
        if (iVar != null) {
            iVar.m(j4, j10);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(l lVar) throws IOException {
        try {
            return h(lVar);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(l lVar, z zVar) throws IOException {
        com.google.android.exoplayer2.util.a.k(this.f22889d);
        if (this.f22890e == null) {
            if (h(lVar)) {
                lVar.h();
            } else {
                throw new ParserException("Failed to determine bitstream type");
            }
        }
        if (!this.f22891f) {
            e0 f10 = this.f22889d.f(0, 1);
            this.f22889d.t();
            this.f22890e.d(this.f22889d, f10);
            this.f22891f = true;
        }
        return this.f22890e.g(lVar, zVar);
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(m mVar) {
        this.f22889d = mVar;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }
}
