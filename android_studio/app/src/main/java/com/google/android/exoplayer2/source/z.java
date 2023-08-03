package com.google.android.exoplayer2.source;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.s2;
import java.io.IOException;

/* compiled from: MediaSource.java */
/* loaded from: classes2.dex */
public interface z {

    /* compiled from: MediaSource.java */
    /* loaded from: classes2.dex */
    public static final class a extends x {
        public a(Object obj) {
            super(obj);
        }

        @Override // com.google.android.exoplayer2.source.x
        /* renamed from: d */
        public a a(Object obj) {
            return new a(super.a(obj));
        }

        @Override // com.google.android.exoplayer2.source.x
        /* renamed from: e */
        public a b(long j4) {
            return new a(super.b(j4));
        }

        public a(Object obj, long j4) {
            super(obj, j4);
        }

        public a(Object obj, long j4, int i4) {
            super(obj, j4, i4);
        }

        public a(Object obj, int i4, int i10, long j4) {
            super(obj, i4, i10, j4);
        }

        public a(x xVar) {
            super(xVar);
        }
    }

    /* compiled from: MediaSource.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(z zVar, s2 s2Var);
    }

    w a(a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4);

    void b(b bVar);

    void c(Handler handler, h0 h0Var);

    void d(h0 h0Var);

    com.google.android.exoplayer2.b1 e();

    @Nullable
    @Deprecated
    Object f();

    void g(w wVar);

    void h(b bVar, @Nullable com.google.android.exoplayer2.upstream.p0 p0Var);

    void i(b bVar);

    void j(b bVar);

    void l(Handler handler, com.google.android.exoplayer2.drm.s sVar);

    void m(com.google.android.exoplayer2.drm.s sVar);

    void n() throws IOException;

    boolean o();

    @Nullable
    s2 p();
}
