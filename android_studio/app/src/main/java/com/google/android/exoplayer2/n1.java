package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.w;
import com.google.android.exoplayer2.source.z;

/* compiled from: MetadataRetriever.java */
/* loaded from: classes2.dex */
public final class n1 {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MetadataRetriever.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: e  reason: collision with root package name */
        private static final int f24178e = 0;

        /* renamed from: f  reason: collision with root package name */
        private static final int f24179f = 1;

        /* renamed from: g  reason: collision with root package name */
        private static final int f24180g = 2;

        /* renamed from: h  reason: collision with root package name */
        private static final int f24181h = 3;

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.source.j0 f24182a;

        /* renamed from: b  reason: collision with root package name */
        private final HandlerThread f24183b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.q f24184c;

        /* renamed from: d  reason: collision with root package name */
        private final com.google.common.util.concurrent.e1<TrackGroupArray> f24185d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MetadataRetriever.java */
        /* loaded from: classes2.dex */
        public final class a implements Handler.Callback {

            /* renamed from: e  reason: collision with root package name */
            private static final int f24186e = 100;

            /* renamed from: a  reason: collision with root package name */
            private final C0171a f24187a = new C0171a();

            /* renamed from: b  reason: collision with root package name */
            private com.google.android.exoplayer2.source.z f24188b;

            /* renamed from: c  reason: collision with root package name */
            private com.google.android.exoplayer2.source.w f24189c;

            /* JADX INFO: Access modifiers changed from: private */
            /* compiled from: MetadataRetriever.java */
            /* renamed from: com.google.android.exoplayer2.n1$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public final class C0171a implements z.b {

                /* renamed from: a  reason: collision with root package name */
                private final C0172a f24191a = new C0172a();

                /* renamed from: b  reason: collision with root package name */
                private final com.google.android.exoplayer2.upstream.b f24192b = new com.google.android.exoplayer2.upstream.p(true, 65536);

                /* renamed from: c  reason: collision with root package name */
                private boolean f24193c;

                /* compiled from: MetadataRetriever.java */
                /* renamed from: com.google.android.exoplayer2.n1$b$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes2.dex */
                private final class C0172a implements w.a {
                    private C0172a() {
                    }

                    @Override // com.google.android.exoplayer2.source.y0.a
                    /* renamed from: a */
                    public void f(com.google.android.exoplayer2.source.w wVar) {
                        b.this.f24184c.d(2).b();
                    }

                    @Override // com.google.android.exoplayer2.source.w.a
                    public void i(com.google.android.exoplayer2.source.w wVar) {
                        b.this.f24185d.M(wVar.u());
                        b.this.f24184c.d(3).b();
                    }
                }

                public C0171a() {
                }

                @Override // com.google.android.exoplayer2.source.z.b
                public void a(com.google.android.exoplayer2.source.z zVar, s2 s2Var) {
                    if (this.f24193c) {
                        return;
                    }
                    this.f24193c = true;
                    a.this.f24189c = zVar.a(new z.a(s2Var.q(0)), this.f24192b, 0L);
                    a.this.f24189c.n(this.f24191a, 0L);
                }
            }

            public a() {
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i4 = message.what;
                if (i4 == 0) {
                    com.google.android.exoplayer2.source.z c10 = b.this.f24182a.c((b1) message.obj);
                    this.f24188b = c10;
                    c10.h(this.f24187a, null);
                    b.this.f24184c.l(1);
                    return true;
                } else if (i4 == 1) {
                    try {
                        com.google.android.exoplayer2.source.w wVar = this.f24189c;
                        if (wVar == null) {
                            ((com.google.android.exoplayer2.source.z) com.google.android.exoplayer2.util.a.g(this.f24188b)).n();
                        } else {
                            wVar.s();
                        }
                        b.this.f24184c.b(1, 100);
                    } catch (Exception e4) {
                        b.this.f24185d.N(e4);
                        b.this.f24184c.d(3).b();
                    }
                    return true;
                } else if (i4 == 2) {
                    ((com.google.android.exoplayer2.source.w) com.google.android.exoplayer2.util.a.g(this.f24189c)).e(0L);
                    return true;
                } else if (i4 != 3) {
                    return false;
                } else {
                    if (this.f24189c != null) {
                        ((com.google.android.exoplayer2.source.z) com.google.android.exoplayer2.util.a.g(this.f24188b)).g(this.f24189c);
                    }
                    ((com.google.android.exoplayer2.source.z) com.google.android.exoplayer2.util.a.g(this.f24188b)).b(this.f24187a);
                    b.this.f24184c.i(null);
                    b.this.f24183b.quit();
                    return true;
                }
            }
        }

        public b(com.google.android.exoplayer2.source.j0 j0Var, com.google.android.exoplayer2.util.d dVar) {
            this.f24182a = j0Var;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:MetadataRetriever");
            this.f24183b = handlerThread;
            handlerThread.start();
            this.f24184c = dVar.d(handlerThread.getLooper(), new a());
            this.f24185d = com.google.common.util.concurrent.e1.R();
        }

        public com.google.common.util.concurrent.q0<TrackGroupArray> e(b1 b1Var) {
            this.f24184c.h(0, b1Var).b();
            return this.f24185d;
        }
    }

    private n1() {
    }

    public static com.google.common.util.concurrent.q0<TrackGroupArray> a(Context context, b1 b1Var) {
        return b(context, b1Var, com.google.android.exoplayer2.util.d.f27523a);
    }

    @VisibleForTesting
    static com.google.common.util.concurrent.q0<TrackGroupArray> b(Context context, b1 b1Var, com.google.android.exoplayer2.util.d dVar) {
        return d(new com.google.android.exoplayer2.source.k(context, new com.google.android.exoplayer2.extractor.h().k(6)), b1Var, dVar);
    }

    public static com.google.common.util.concurrent.q0<TrackGroupArray> c(com.google.android.exoplayer2.source.j0 j0Var, b1 b1Var) {
        return d(j0Var, b1Var, com.google.android.exoplayer2.util.d.f27523a);
    }

    private static com.google.common.util.concurrent.q0<TrackGroupArray> d(com.google.android.exoplayer2.source.j0 j0Var, b1 b1Var, com.google.android.exoplayer2.util.d dVar) {
        return new b(j0Var, dVar).e(b1Var);
    }
}
