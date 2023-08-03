package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.k;
import com.bumptech.glide.util.m;
import com.bumptech.glide.util.o;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GifFrameLoader.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.gifdecoder.a f9380a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f9381b;

    /* renamed from: c  reason: collision with root package name */
    private final List<b> f9382c;

    /* renamed from: d  reason: collision with root package name */
    final k f9383d;

    /* renamed from: e  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f9384e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f9385f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f9386g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f9387h;

    /* renamed from: i  reason: collision with root package name */
    private com.bumptech.glide.j<Bitmap> f9388i;

    /* renamed from: j  reason: collision with root package name */
    private a f9389j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f9390k;

    /* renamed from: l  reason: collision with root package name */
    private a f9391l;

    /* renamed from: m  reason: collision with root package name */
    private Bitmap f9392m;

    /* renamed from: n  reason: collision with root package name */
    private com.bumptech.glide.load.i<Bitmap> f9393n;

    /* renamed from: o  reason: collision with root package name */
    private a f9394o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private d f9395p;

    /* renamed from: q  reason: collision with root package name */
    private int f9396q;

    /* renamed from: r  reason: collision with root package name */
    private int f9397r;

    /* renamed from: s  reason: collision with root package name */
    private int f9398s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GifFrameLoader.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a extends com.bumptech.glide.request.target.e<Bitmap> {

        /* renamed from: d  reason: collision with root package name */
        private final Handler f9399d;

        /* renamed from: e  reason: collision with root package name */
        final int f9400e;

        /* renamed from: f  reason: collision with root package name */
        private final long f9401f;

        /* renamed from: g  reason: collision with root package name */
        private Bitmap f9402g;

        a(Handler handler, int i4, long j4) {
            this.f9399d = handler;
            this.f9400e = i4;
            this.f9401f = j4;
        }

        Bitmap b() {
            return this.f9402g;
        }

        @Override // com.bumptech.glide.request.target.p
        /* renamed from: c */
        public void q(@NonNull Bitmap bitmap, @Nullable com.bumptech.glide.request.transition.f<? super Bitmap> fVar) {
            this.f9402g = bitmap;
            this.f9399d.sendMessageAtTime(this.f9399d.obtainMessage(1, this), this.f9401f);
        }

        @Override // com.bumptech.glide.request.target.p
        public void k(@Nullable Drawable drawable) {
            this.f9402g = null;
        }
    }

    /* compiled from: GifFrameLoader.java */
    /* loaded from: classes.dex */
    public interface b {
        void a();
    }

    /* compiled from: GifFrameLoader.java */
    /* loaded from: classes.dex */
    private class c implements Handler.Callback {

        /* renamed from: b  reason: collision with root package name */
        static final int f9403b = 1;

        /* renamed from: c  reason: collision with root package name */
        static final int f9404c = 2;

        c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i4 = message.what;
            if (i4 == 1) {
                g.this.o((a) message.obj);
                return true;
            } else if (i4 == 2) {
                g.this.f9383d.A((a) message.obj);
                return false;
            } else {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GifFrameLoader.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface d {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(com.bumptech.glide.c cVar, com.bumptech.glide.gifdecoder.a aVar, int i4, int i10, com.bumptech.glide.load.i<Bitmap> iVar, Bitmap bitmap) {
        this(cVar.h(), com.bumptech.glide.c.E(cVar.j()), aVar, null, k(com.bumptech.glide.c.E(cVar.j()), i4, i10), iVar, bitmap);
    }

    private static com.bumptech.glide.load.c g() {
        return new com.bumptech.glide.signature.e(Double.valueOf(Math.random()));
    }

    private static com.bumptech.glide.j<Bitmap> k(k kVar, int i4, int i10) {
        return kVar.v().a(com.bumptech.glide.request.h.X0(com.bumptech.glide.load.engine.j.f8861b).Q0(true).G0(true).v0(i4, i10));
    }

    private void n() {
        if (!this.f9385f || this.f9386g) {
            return;
        }
        if (this.f9387h) {
            m.a(this.f9394o == null, "Pending target must be null when starting from the first frame");
            this.f9380a.m();
            this.f9387h = false;
        }
        a aVar = this.f9394o;
        if (aVar != null) {
            this.f9394o = null;
            o(aVar);
            return;
        }
        this.f9386g = true;
        long uptimeMillis = SystemClock.uptimeMillis() + this.f9380a.l();
        this.f9380a.f();
        this.f9391l = new a(this.f9381b, this.f9380a.o(), uptimeMillis);
        this.f9388i.a(com.bumptech.glide.request.h.o1(g())).m(this.f9380a).h1(this.f9391l);
    }

    private void p() {
        Bitmap bitmap = this.f9392m;
        if (bitmap != null) {
            this.f9384e.d(bitmap);
            this.f9392m = null;
        }
    }

    private void t() {
        if (this.f9385f) {
            return;
        }
        this.f9385f = true;
        this.f9390k = false;
        n();
    }

    private void u() {
        this.f9385f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f9382c.clear();
        p();
        u();
        a aVar = this.f9389j;
        if (aVar != null) {
            this.f9383d.A(aVar);
            this.f9389j = null;
        }
        a aVar2 = this.f9391l;
        if (aVar2 != null) {
            this.f9383d.A(aVar2);
            this.f9391l = null;
        }
        a aVar3 = this.f9394o;
        if (aVar3 != null) {
            this.f9383d.A(aVar3);
            this.f9394o = null;
        }
        this.f9380a.clear();
        this.f9390k = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer b() {
        return this.f9380a.i().asReadOnlyBuffer();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap c() {
        a aVar = this.f9389j;
        return aVar != null ? aVar.b() : this.f9392m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        a aVar = this.f9389j;
        if (aVar != null) {
            return aVar.f9400e;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap e() {
        return this.f9392m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f9380a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bumptech.glide.load.i<Bitmap> h() {
        return this.f9393n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        return this.f9398s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        return this.f9380a.j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int l() {
        return this.f9380a.r() + this.f9396q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m() {
        return this.f9397r;
    }

    @VisibleForTesting
    void o(a aVar) {
        d dVar = this.f9395p;
        if (dVar != null) {
            dVar.a();
        }
        this.f9386g = false;
        if (this.f9390k) {
            this.f9381b.obtainMessage(2, aVar).sendToTarget();
        } else if (!this.f9385f) {
            if (this.f9387h) {
                this.f9381b.obtainMessage(2, aVar).sendToTarget();
            } else {
                this.f9394o = aVar;
            }
        } else {
            if (aVar.b() != null) {
                p();
                a aVar2 = this.f9389j;
                this.f9389j = aVar;
                for (int size = this.f9382c.size() - 1; size >= 0; size--) {
                    this.f9382c.get(size).a();
                }
                if (aVar2 != null) {
                    this.f9381b.obtainMessage(2, aVar2).sendToTarget();
                }
            }
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(com.bumptech.glide.load.i<Bitmap> iVar, Bitmap bitmap) {
        this.f9393n = (com.bumptech.glide.load.i) m.d(iVar);
        this.f9392m = (Bitmap) m.d(bitmap);
        this.f9388i = this.f9388i.a(new com.bumptech.glide.request.h().J0(iVar));
        this.f9396q = o.h(bitmap);
        this.f9397r = bitmap.getWidth();
        this.f9398s = bitmap.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        m.a(!this.f9385f, "Can't restart a running animation");
        this.f9387h = true;
        a aVar = this.f9394o;
        if (aVar != null) {
            this.f9383d.A(aVar);
            this.f9394o = null;
        }
    }

    @VisibleForTesting
    void s(@Nullable d dVar) {
        this.f9395p = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(b bVar) {
        if (!this.f9390k) {
            if (!this.f9382c.contains(bVar)) {
                boolean isEmpty = this.f9382c.isEmpty();
                this.f9382c.add(bVar);
                if (isEmpty) {
                    t();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(b bVar) {
        this.f9382c.remove(bVar);
        if (this.f9382c.isEmpty()) {
            u();
        }
    }

    g(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, k kVar, com.bumptech.glide.gifdecoder.a aVar, Handler handler, com.bumptech.glide.j<Bitmap> jVar, com.bumptech.glide.load.i<Bitmap> iVar, Bitmap bitmap) {
        this.f9382c = new ArrayList();
        this.f9383d = kVar;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new c()) : handler;
        this.f9384e = eVar;
        this.f9381b = handler;
        this.f9388i = jVar;
        this.f9380a = aVar;
        q(iVar, bitmap);
    }
}
