package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.e;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: BandwidthMeter.java */
/* loaded from: classes2.dex */
public interface e {

    /* compiled from: BandwidthMeter.java */
    /* loaded from: classes2.dex */
    public interface a {

        /* compiled from: BandwidthMeter.java */
        /* renamed from: com.google.android.exoplayer2.upstream.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0188a {

            /* renamed from: a  reason: collision with root package name */
            private final CopyOnWriteArrayList<C0189a> f27227a = new CopyOnWriteArrayList<>();

            /* JADX INFO: Access modifiers changed from: private */
            /* compiled from: BandwidthMeter.java */
            /* renamed from: com.google.android.exoplayer2.upstream.e$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0189a {

                /* renamed from: a  reason: collision with root package name */
                private final Handler f27228a;

                /* renamed from: b  reason: collision with root package name */
                private final a f27229b;

                /* renamed from: c  reason: collision with root package name */
                private boolean f27230c;

                public C0189a(Handler handler, a aVar) {
                    this.f27228a = handler;
                    this.f27229b = aVar;
                }

                public void d() {
                    this.f27230c = true;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void d(C0189a c0189a, int i4, long j4, long j10) {
                c0189a.f27229b.K(i4, j4, j10);
            }

            public void b(Handler handler, a aVar) {
                com.google.android.exoplayer2.util.a.g(handler);
                com.google.android.exoplayer2.util.a.g(aVar);
                e(aVar);
                this.f27227a.add(new C0189a(handler, aVar));
            }

            public void c(final int i4, final long j4, final long j10) {
                Iterator<C0189a> it = this.f27227a.iterator();
                while (it.hasNext()) {
                    final C0189a next = it.next();
                    if (!next.f27230c) {
                        next.f27228a.post(new Runnable() { // from class: com.google.android.exoplayer2.upstream.d
                            @Override // java.lang.Runnable
                            public final void run() {
                                e.a.C0188a.d(e.a.C0188a.C0189a.this, i4, j4, j10);
                            }
                        });
                    }
                }
            }

            public void e(a aVar) {
                Iterator<C0189a> it = this.f27227a.iterator();
                while (it.hasNext()) {
                    C0189a next = it.next();
                    if (next.f27229b == aVar) {
                        next.d();
                        this.f27227a.remove(next);
                    }
                }
            }
        }

        void K(int i4, long j4, long j10);
    }

    long a();

    @Nullable
    p0 c();

    void d(a aVar);

    long e();

    void g(Handler handler, a aVar);
}
