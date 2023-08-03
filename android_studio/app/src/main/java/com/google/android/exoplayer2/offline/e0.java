package com.google.android.exoplayer2.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.offline.a0;
import com.google.android.exoplayer2.offline.y;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.b;
import com.google.android.exoplayer2.upstream.cache.k;
import com.google.android.exoplayer2.upstream.h0;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: SegmentDownloader.java */
/* loaded from: classes2.dex */
public abstract class e0<M extends a0<M>> implements y {

    /* renamed from: k  reason: collision with root package name */
    private static final int f24338k = 131072;

    /* renamed from: l  reason: collision with root package name */
    private static final long f24339l = 20000000;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.o f24340a;

    /* renamed from: b  reason: collision with root package name */
    private final h0.a<M> f24341b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<StreamKey> f24342c;

    /* renamed from: d  reason: collision with root package name */
    private final b.d f24343d;

    /* renamed from: e  reason: collision with root package name */
    private final Cache f24344e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.cache.i f24345f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final PriorityTaskManager f24346g;

    /* renamed from: h  reason: collision with root package name */
    private final Executor f24347h;

    /* renamed from: i  reason: collision with root package name */
    private final ArrayList<l0<?, ?>> f24348i;

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f24349j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SegmentDownloader.java */
    /* loaded from: classes2.dex */
    public class a extends l0<M, IOException> {

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ com.google.android.exoplayer2.upstream.m f24350h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ com.google.android.exoplayer2.upstream.o f24351i;

        a(com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.o oVar) {
            this.f24350h = mVar;
            this.f24351i = oVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.util.l0
        /* renamed from: g */
        public M e() throws IOException {
            return (M) h0.h(this.f24350h, e0.this.f24341b, this.f24351i, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SegmentDownloader.java */
    /* loaded from: classes2.dex */
    public static final class b implements k.a {

        /* renamed from: a  reason: collision with root package name */
        private final y.a f24353a;

        /* renamed from: b  reason: collision with root package name */
        private final long f24354b;

        /* renamed from: c  reason: collision with root package name */
        private final int f24355c;

        /* renamed from: d  reason: collision with root package name */
        private long f24356d;

        /* renamed from: e  reason: collision with root package name */
        private int f24357e;

        public b(y.a aVar, long j4, int i4, long j10, int i10) {
            this.f24353a = aVar;
            this.f24354b = j4;
            this.f24355c = i4;
            this.f24356d = j10;
            this.f24357e = i10;
        }

        private float b() {
            long j4 = this.f24354b;
            if (j4 != -1 && j4 != 0) {
                return (((float) this.f24356d) * 100.0f) / ((float) j4);
            }
            int i4 = this.f24355c;
            if (i4 != 0) {
                return (this.f24357e * 100.0f) / i4;
            }
            return -1.0f;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.a
        public void a(long j4, long j10, long j11) {
            long j12 = this.f24356d + j11;
            this.f24356d = j12;
            this.f24353a.a(this.f24354b, j12, b());
        }

        public void c() {
            this.f24357e++;
            this.f24353a.a(this.f24354b, this.f24356d, b());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: SegmentDownloader.java */
    /* loaded from: classes2.dex */
    public static class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        public final long f24358a;

        /* renamed from: b  reason: collision with root package name */
        public final com.google.android.exoplayer2.upstream.o f24359b;

        public c(long j4, com.google.android.exoplayer2.upstream.o oVar) {
            this.f24358a = j4;
            this.f24359b = oVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(c cVar) {
            return z0.r(this.f24358a, cVar.f24358a);
        }
    }

    /* compiled from: SegmentDownloader.java */
    /* loaded from: classes2.dex */
    private static final class d extends l0<Void, IOException> {

        /* renamed from: h  reason: collision with root package name */
        public final c f24360h;

        /* renamed from: i  reason: collision with root package name */
        public final com.google.android.exoplayer2.upstream.cache.b f24361i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private final b f24362j;

        /* renamed from: k  reason: collision with root package name */
        public final byte[] f24363k;

        /* renamed from: l  reason: collision with root package name */
        private final com.google.android.exoplayer2.upstream.cache.k f24364l;

        public d(c cVar, com.google.android.exoplayer2.upstream.cache.b bVar, @Nullable b bVar2, byte[] bArr) {
            this.f24360h = cVar;
            this.f24361i = bVar;
            this.f24362j = bVar2;
            this.f24363k = bArr;
            this.f24364l = new com.google.android.exoplayer2.upstream.cache.k(bVar, cVar.f24359b, bArr, bVar2);
        }

        @Override // com.google.android.exoplayer2.util.l0
        protected void c() {
            this.f24364l.b();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.util.l0
        /* renamed from: g */
        public Void e() throws IOException {
            this.f24364l.a();
            b bVar = this.f24362j;
            if (bVar != null) {
                bVar.c();
                return null;
            }
            return null;
        }
    }

    public e0(b1 b1Var, h0.a<M> aVar, b.d dVar, Executor executor) {
        com.google.android.exoplayer2.util.a.g(b1Var.f21439b);
        this.f24340a = f(b1Var.f21439b.f21502a);
        this.f24341b = aVar;
        this.f24342c = new ArrayList<>(b1Var.f21439b.f21506e);
        this.f24343d = dVar;
        this.f24347h = executor;
        this.f24344e = (Cache) com.google.android.exoplayer2.util.a.g(dVar.h());
        this.f24345f = dVar.i();
        this.f24346g = dVar.j();
        this.f24348i = new ArrayList<>();
    }

    private <T> void c(l0<T, ?> l0Var) throws InterruptedException {
        synchronized (this.f24348i) {
            if (!this.f24349j) {
                this.f24348i.add(l0Var);
            } else {
                throw new InterruptedException();
            }
        }
    }

    private static boolean d(com.google.android.exoplayer2.upstream.o oVar, com.google.android.exoplayer2.upstream.o oVar2) {
        if (oVar.f27288a.equals(oVar2.f27288a)) {
            long j4 = oVar.f27295h;
            if (j4 != -1 && oVar.f27294g + j4 == oVar2.f27294g && z0.c(oVar.f27296i, oVar2.f27296i) && oVar.f27297j == oVar2.f27297j && oVar.f27290c == oVar2.f27290c && oVar.f27292e.equals(oVar2.f27292e)) {
                return true;
            }
        }
        return false;
    }

    protected static com.google.android.exoplayer2.upstream.o f(Uri uri) {
        return new o.b().j(uri).c(1).a();
    }

    private static void i(List<c> list, com.google.android.exoplayer2.upstream.cache.i iVar) {
        HashMap hashMap = new HashMap();
        int i4 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            String a10 = iVar.a(cVar.f24359b);
            Integer num = (Integer) hashMap.get(a10);
            c cVar2 = num == null ? null : list.get(num.intValue());
            if (cVar2 != null && cVar.f24358a <= cVar2.f24358a + f24339l && d(cVar2.f24359b, cVar.f24359b)) {
                long j4 = cVar.f24359b.f27295h;
                list.set(((Integer) com.google.android.exoplayer2.util.a.g(num)).intValue(), new c(cVar2.f24358a, cVar2.f24359b.f(0L, j4 != -1 ? cVar2.f24359b.f27295h + j4 : -1L)));
            } else {
                hashMap.put(a10, Integer.valueOf(i4));
                list.set(i4, cVar);
                i4++;
            }
        }
        z0.d1(list, i4, list.size());
    }

    private void j(int i4) {
        synchronized (this.f24348i) {
            this.f24348i.remove(i4);
        }
    }

    private void k(l0<?, ?> l0Var) {
        synchronized (this.f24348i) {
            this.f24348i.remove(l0Var);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x01a6 A[LOOP:1: B:84:0x019e->B:86:0x01a6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01bf A[LOOP:2: B:88:0x01bd->B:89:0x01bf, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01d4  */
    @Override // com.google.android.exoplayer2.offline.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(@androidx.annotation.Nullable com.google.android.exoplayer2.offline.y.a r26) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 474
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.offline.e0.a(com.google.android.exoplayer2.offline.y$a):void");
    }

    @Override // com.google.android.exoplayer2.offline.y
    public void cancel() {
        synchronized (this.f24348i) {
            this.f24349j = true;
            for (int i4 = 0; i4 < this.f24348i.size(); i4++) {
                this.f24348i.get(i4).cancel(true);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:27|28|29|(2:34|(2:36|37)(3:38|39|40))(2:31|32)|33) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0040, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0042, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
        r0 = (java.lang.Throwable) com.google.android.exoplayer2.util.a.g(r4.getCause());
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004f, code lost:
        if ((r0 instanceof com.google.android.exoplayer2.util.PriorityTaskManager.PriorityTooLowException) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
        if ((r0 instanceof java.io.IOException) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0056, code lost:
        com.google.android.exoplayer2.util.z0.j1(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0062, code lost:
        throw ((java.io.IOException) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0063, code lost:
        r3.a();
        k(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0069, code lost:
        throw r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final <T> T e(com.google.android.exoplayer2.util.l0<T, ?> r3, boolean r4) throws java.lang.InterruptedException, java.io.IOException {
        /*
            r2 = this;
            if (r4 == 0) goto L20
            r3.run()
            java.lang.Object r3 = r3.get()     // Catch: java.util.concurrent.ExecutionException -> La
            return r3
        La:
            r4 = move-exception
            java.lang.Throwable r0 = r4.getCause()
            java.lang.Object r0 = com.google.android.exoplayer2.util.a.g(r0)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            boolean r1 = r0 instanceof java.io.IOException
            if (r1 != 0) goto L1d
            com.google.android.exoplayer2.util.z0.j1(r4)
            goto L20
        L1d:
            java.io.IOException r0 = (java.io.IOException) r0
            throw r0
        L20:
            boolean r4 = r2.f24349j
            if (r4 != 0) goto L6a
            com.google.android.exoplayer2.util.PriorityTaskManager r4 = r2.f24346g
            if (r4 == 0) goto L2d
            r0 = -1000(0xfffffffffffffc18, float:NaN)
            r4.b(r0)
        L2d:
            r2.c(r3)
            java.util.concurrent.Executor r4 = r2.f24347h
            r4.execute(r3)
            java.lang.Object r4 = r3.get()     // Catch: java.lang.Throwable -> L40 java.util.concurrent.ExecutionException -> L42
            r3.a()
            r2.k(r3)
            return r4
        L40:
            r4 = move-exception
            goto L63
        L42:
            r4 = move-exception
            java.lang.Throwable r0 = r4.getCause()     // Catch: java.lang.Throwable -> L40
            java.lang.Object r0 = com.google.android.exoplayer2.util.a.g(r0)     // Catch: java.lang.Throwable -> L40
            java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch: java.lang.Throwable -> L40
            boolean r1 = r0 instanceof com.google.android.exoplayer2.util.PriorityTaskManager.PriorityTooLowException     // Catch: java.lang.Throwable -> L40
            if (r1 == 0) goto L52
            goto L59
        L52:
            boolean r1 = r0 instanceof java.io.IOException     // Catch: java.lang.Throwable -> L40
            if (r1 != 0) goto L60
            com.google.android.exoplayer2.util.z0.j1(r4)     // Catch: java.lang.Throwable -> L40
        L59:
            r3.a()
            r2.k(r3)
            goto L20
        L60:
            java.io.IOException r0 = (java.io.IOException) r0     // Catch: java.lang.Throwable -> L40
            throw r0     // Catch: java.lang.Throwable -> L40
        L63:
            r3.a()
            r2.k(r3)
            throw r4
        L6a:
            java.lang.InterruptedException r3 = new java.lang.InterruptedException
            r3.<init>()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.offline.e0.e(com.google.android.exoplayer2.util.l0, boolean):java.lang.Object");
    }

    protected final M g(com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.o oVar, boolean z9) throws InterruptedException, IOException {
        return (M) e(new a(mVar, oVar), z9);
    }

    protected abstract List<c> h(com.google.android.exoplayer2.upstream.m mVar, M m9, boolean z9) throws IOException, InterruptedException;

    @Override // com.google.android.exoplayer2.offline.y
    public final void remove() {
        com.google.android.exoplayer2.upstream.cache.b f10 = this.f24343d.f();
        try {
            try {
                List<c> h4 = h(f10, g(f10, this.f24340a, true), true);
                for (int i4 = 0; i4 < h4.size(); i4++) {
                    this.f24344e.m(this.f24345f.a(h4.get(i4).f24359b));
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception unused2) {
            }
        } finally {
            this.f24344e.m(this.f24345f.a(this.f24340a));
        }
    }
}
