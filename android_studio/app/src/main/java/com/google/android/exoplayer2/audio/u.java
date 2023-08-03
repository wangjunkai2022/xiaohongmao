package com.google.android.exoplayer2.audio;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.u;
import com.google.android.exoplayer2.util.z0;

/* compiled from: AudioRendererEventListener.java */
/* loaded from: classes2.dex */
public interface u {

    /* compiled from: AudioRendererEventListener.java */
    /* loaded from: classes2.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Handler f21367a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final u f21368b;

        public a(@Nullable Handler handler, @Nullable u uVar) {
            this.f21367a = uVar != null ? (Handler) com.google.android.exoplayer2.util.a.g(handler) : null;
            this.f21368b = uVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void A(int i4, long j4, long j10) {
            ((u) z0.k(this.f21368b)).m0(i4, j4, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(Exception exc) {
            ((u) z0.k(this.f21368b)).h0(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(Exception exc) {
            ((u) z0.k(this.f21368b)).d(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(String str, long j4, long j10) {
            ((u) z0.k(this.f21368b)).M(str, j4, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(String str) {
            ((u) z0.k(this.f21368b)).L(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(com.google.android.exoplayer2.decoder.d dVar) {
            dVar.c();
            ((u) z0.k(this.f21368b)).V(dVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(com.google.android.exoplayer2.decoder.d dVar) {
            ((u) z0.k(this.f21368b)).y(dVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(Format format, com.google.android.exoplayer2.decoder.e eVar) {
            ((u) z0.k(this.f21368b)).i0(format);
            ((u) z0.k(this.f21368b)).b0(format, eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(long j4) {
            ((u) z0.k(this.f21368b)).R(j4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(boolean z9) {
            ((u) z0.k(this.f21368b)).a(z9);
        }

        public void B(final long j4) {
            Handler handler = this.f21367a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.y(j4);
                    }
                });
            }
        }

        public void C(final boolean z9) {
            Handler handler = this.f21367a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.z(z9);
                    }
                });
            }
        }

        public void D(final int i4, final long j4, final long j10) {
            Handler handler = this.f21367a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.A(i4, j4, j10);
                    }
                });
            }
        }

        public void k(final Exception exc) {
            Handler handler = this.f21367a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.r(exc);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Handler handler = this.f21367a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.s(exc);
                    }
                });
            }
        }

        public void m(final String str, final long j4, final long j10) {
            Handler handler = this.f21367a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.t(str, j4, j10);
                    }
                });
            }
        }

        public void n(final String str) {
            Handler handler = this.f21367a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.u(str);
                    }
                });
            }
        }

        public void o(final com.google.android.exoplayer2.decoder.d dVar) {
            dVar.c();
            Handler handler = this.f21367a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.v(dVar);
                    }
                });
            }
        }

        public void p(final com.google.android.exoplayer2.decoder.d dVar) {
            Handler handler = this.f21367a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.w(dVar);
                    }
                });
            }
        }

        public void q(final Format format, @Nullable final com.google.android.exoplayer2.decoder.e eVar) {
            Handler handler = this.f21367a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.x(format, eVar);
                    }
                });
            }
        }
    }

    void L(String str);

    void M(String str, long j4, long j10);

    void R(long j4);

    void V(com.google.android.exoplayer2.decoder.d dVar);

    void a(boolean z9);

    void b0(Format format, @Nullable com.google.android.exoplayer2.decoder.e eVar);

    void d(Exception exc);

    void h0(Exception exc);

    @Deprecated
    void i0(Format format);

    void m0(int i4, long j4, long j10);

    void y(com.google.android.exoplayer2.decoder.d dVar);
}
