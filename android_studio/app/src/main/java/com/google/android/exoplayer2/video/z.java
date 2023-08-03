package com.google.android.exoplayer2.video;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.video.z;

/* compiled from: VideoRendererEventListener.java */
/* loaded from: classes2.dex */
public interface z {

    /* compiled from: VideoRendererEventListener.java */
    /* loaded from: classes2.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Handler f28124a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final z f28125b;

        public a(@Nullable Handler handler, @Nullable z zVar) {
            this.f28124a = zVar != null ? (Handler) com.google.android.exoplayer2.util.a.g(handler) : null;
            this.f28125b = zVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(String str, long j4, long j10) {
            ((z) z0.k(this.f28125b)).F(str, j4, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(String str) {
            ((z) z0.k(this.f28125b)).x(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(com.google.android.exoplayer2.decoder.d dVar) {
            dVar.c();
            ((z) z0.k(this.f28125b)).T(dVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(int i4, long j4) {
            ((z) z0.k(this.f28125b)).Z(i4, j4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(com.google.android.exoplayer2.decoder.d dVar) {
            ((z) z0.k(this.f28125b)).f0(dVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(Format format, com.google.android.exoplayer2.decoder.e eVar) {
            ((z) z0.k(this.f28125b)).P(format);
            ((z) z0.k(this.f28125b)).Q(format, eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(Object obj, long j4) {
            ((z) z0.k(this.f28125b)).d0(obj, j4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(long j4, int i4) {
            ((z) z0.k(this.f28125b)).o0(j4, i4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(Exception exc) {
            ((z) z0.k(this.f28125b)).S(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(b0 b0Var) {
            ((z) z0.k(this.f28125b)).b(b0Var);
        }

        public void A(final Object obj) {
            if (this.f28124a != null) {
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f28124a.post(new Runnable() { // from class: com.google.android.exoplayer2.video.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.a.this.w(obj, elapsedRealtime);
                    }
                });
            }
        }

        public void B(final long j4, final int i4) {
            Handler handler = this.f28124a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.a.this.x(j4, i4);
                    }
                });
            }
        }

        public void C(final Exception exc) {
            Handler handler = this.f28124a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.a.this.y(exc);
                    }
                });
            }
        }

        public void D(final b0 b0Var) {
            Handler handler = this.f28124a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.a.this.z(b0Var);
                    }
                });
            }
        }

        public void k(final String str, final long j4, final long j10) {
            Handler handler = this.f28124a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.a.this.q(str, j4, j10);
                    }
                });
            }
        }

        public void l(final String str) {
            Handler handler = this.f28124a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.a.this.r(str);
                    }
                });
            }
        }

        public void m(final com.google.android.exoplayer2.decoder.d dVar) {
            dVar.c();
            Handler handler = this.f28124a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.a.this.s(dVar);
                    }
                });
            }
        }

        public void n(final int i4, final long j4) {
            Handler handler = this.f28124a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.a.this.t(i4, j4);
                    }
                });
            }
        }

        public void o(final com.google.android.exoplayer2.decoder.d dVar) {
            Handler handler = this.f28124a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.a.this.u(dVar);
                    }
                });
            }
        }

        public void p(final Format format, @Nullable final com.google.android.exoplayer2.decoder.e eVar) {
            Handler handler = this.f28124a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.a.this.v(format, eVar);
                    }
                });
            }
        }
    }

    void F(String str, long j4, long j10);

    @Deprecated
    void P(Format format);

    void Q(Format format, @Nullable com.google.android.exoplayer2.decoder.e eVar);

    void S(Exception exc);

    void T(com.google.android.exoplayer2.decoder.d dVar);

    void Z(int i4, long j4);

    void b(b0 b0Var);

    void d0(Object obj, long j4);

    void f0(com.google.android.exoplayer2.decoder.d dVar);

    void o0(long j4, int i4);

    void x(String str);
}
