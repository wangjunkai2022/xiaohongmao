package com.google.android.exoplayer2.extractor.jpeg;

import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.m;

/* compiled from: StartOffsetExtractorOutput.java */
/* loaded from: classes2.dex */
public final class d implements m {

    /* renamed from: a  reason: collision with root package name */
    private final long f22323a;

    /* renamed from: b  reason: collision with root package name */
    private final m f22324b;

    /* compiled from: StartOffsetExtractorOutput.java */
    /* loaded from: classes2.dex */
    class a implements b0 {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ b0 f22325d;

        a(b0 b0Var) {
            this.f22325d = b0Var;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public b0.a e(long j4) {
            b0.a e4 = this.f22325d.e(j4);
            c0 c0Var = e4.f22114a;
            c0 c0Var2 = new c0(c0Var.f22124a, c0Var.f22125b + d.this.f22323a);
            c0 c0Var3 = e4.f22115b;
            return new b0.a(c0Var2, new c0(c0Var3.f22124a, c0Var3.f22125b + d.this.f22323a));
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public boolean g() {
            return this.f22325d.g();
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public long i() {
            return this.f22325d.i();
        }
    }

    public d(long j4, m mVar) {
        this.f22323a = j4;
        this.f22324b = mVar;
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public e0 f(int i4, int i10) {
        return this.f22324b.f(i4, i10);
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public void q(b0 b0Var) {
        this.f22324b.q(new a(b0Var));
    }

    @Override // com.google.android.exoplayer2.extractor.m
    public void t() {
        this.f22324b.t();
    }
}
