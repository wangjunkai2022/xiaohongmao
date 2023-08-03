package com.google.android.exoplayer2.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.offline.y;
import com.google.android.exoplayer2.upstream.cache.b;
import com.google.android.exoplayer2.upstream.cache.k;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* compiled from: ProgressiveDownloader.java */
/* loaded from: classes2.dex */
public final class d0 implements y {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f24311a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.o f24312b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.cache.b f24313c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.cache.k f24314d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final PriorityTaskManager f24315e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private y.a f24316f;

    /* renamed from: g  reason: collision with root package name */
    private volatile l0<Void, IOException> f24317g;

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f24318h;

    /* compiled from: ProgressiveDownloader.java */
    /* loaded from: classes2.dex */
    class a extends l0<Void, IOException> {
        a() {
        }

        @Override // com.google.android.exoplayer2.util.l0
        protected void c() {
            d0.this.f24314d.b();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.util.l0
        /* renamed from: g */
        public Void e() throws IOException {
            d0.this.f24314d.a();
            return null;
        }
    }

    @Deprecated
    public d0(Uri uri, @Nullable String str, b.d dVar) {
        this(uri, str, dVar, androidx.window.layout.d.f657a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(long j4, long j10, long j11) {
        y.a aVar = this.f24316f;
        if (aVar == null) {
            return;
        }
        aVar.a(j4, j10, (j4 == -1 || j4 == 0) ? -1.0f : (((float) j10) * 100.0f) / ((float) j4));
    }

    @Override // com.google.android.exoplayer2.offline.y
    public void a(@Nullable y.a aVar) throws IOException, InterruptedException {
        this.f24316f = aVar;
        this.f24317g = new a();
        PriorityTaskManager priorityTaskManager = this.f24315e;
        if (priorityTaskManager != null) {
            priorityTaskManager.a(-1000);
        }
        boolean z9 = false;
        while (!z9) {
            try {
                if (this.f24318h) {
                    break;
                }
                PriorityTaskManager priorityTaskManager2 = this.f24315e;
                if (priorityTaskManager2 != null) {
                    priorityTaskManager2.b(-1000);
                }
                this.f24311a.execute(this.f24317g);
                try {
                    this.f24317g.get();
                    z9 = true;
                } catch (ExecutionException e4) {
                    Throwable th = (Throwable) com.google.android.exoplayer2.util.a.g(e4.getCause());
                    if (!(th instanceof PriorityTaskManager.PriorityTooLowException)) {
                        if (!(th instanceof IOException)) {
                            z0.j1(th);
                        } else {
                            throw ((IOException) th);
                        }
                    }
                }
            } finally {
                this.f24317g.a();
                PriorityTaskManager priorityTaskManager3 = this.f24315e;
                if (priorityTaskManager3 != null) {
                    priorityTaskManager3.e(-1000);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.offline.y
    public void cancel() {
        this.f24318h = true;
        l0<Void, IOException> l0Var = this.f24317g;
        if (l0Var != null) {
            l0Var.cancel(true);
        }
    }

    @Override // com.google.android.exoplayer2.offline.y
    public void remove() {
        this.f24313c.u().m(this.f24313c.v().a(this.f24312b));
    }

    public d0(b1 b1Var, b.d dVar) {
        this(b1Var, dVar, androidx.window.layout.d.f657a);
    }

    @Deprecated
    public d0(Uri uri, @Nullable String str, b.d dVar, Executor executor) {
        this(new b1.c().F(uri).j(str).a(), dVar, executor);
    }

    public d0(b1 b1Var, b.d dVar, Executor executor) {
        this.f24311a = (Executor) com.google.android.exoplayer2.util.a.g(executor);
        com.google.android.exoplayer2.util.a.g(b1Var.f21439b);
        com.google.android.exoplayer2.upstream.o a10 = new o.b().j(b1Var.f21439b.f21502a).g(b1Var.f21439b.f21507f).c(4).a();
        this.f24312b = a10;
        com.google.android.exoplayer2.upstream.cache.b e4 = dVar.e();
        this.f24313c = e4;
        this.f24314d = new com.google.android.exoplayer2.upstream.cache.k(e4, a10, null, new k.a() { // from class: com.google.android.exoplayer2.offline.c0
            @Override // com.google.android.exoplayer2.upstream.cache.k.a
            public final void a(long j4, long j10, long j11) {
                d0.this.d(j4, j10, j11);
            }
        });
        this.f24315e = dVar.j();
    }
}
