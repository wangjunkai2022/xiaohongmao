package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

/* compiled from: WebpFrameLoader.java */
/* loaded from: classes.dex */
public class o {

    /* renamed from: t  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<WebpFrameCacheStrategy> f8447t = com.bumptech.glide.load.e.g("com.bumptech.glide.integration.webp.decoder.WebpFrameLoader.CacheStrategy", WebpFrameCacheStrategy.f8379d);

    /* renamed from: a  reason: collision with root package name */
    private final i f8448a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f8449b;

    /* renamed from: c  reason: collision with root package name */
    private final List<b> f8450c;

    /* renamed from: d  reason: collision with root package name */
    final com.bumptech.glide.k f8451d;

    /* renamed from: e  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f8452e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f8453f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f8454g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f8455h;

    /* renamed from: i  reason: collision with root package name */
    private com.bumptech.glide.j<Bitmap> f8456i;

    /* renamed from: j  reason: collision with root package name */
    private a f8457j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f8458k;

    /* renamed from: l  reason: collision with root package name */
    private a f8459l;

    /* renamed from: m  reason: collision with root package name */
    private Bitmap f8460m;

    /* renamed from: n  reason: collision with root package name */
    private com.bumptech.glide.load.i<Bitmap> f8461n;

    /* renamed from: o  reason: collision with root package name */
    private a f8462o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private d f8463p;

    /* renamed from: q  reason: collision with root package name */
    private int f8464q;

    /* renamed from: r  reason: collision with root package name */
    private int f8465r;

    /* renamed from: s  reason: collision with root package name */
    private int f8466s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebpFrameLoader.java */
    /* loaded from: classes.dex */
    public static class a extends com.bumptech.glide.request.target.e<Bitmap> {

        /* renamed from: d  reason: collision with root package name */
        private final Handler f8467d;

        /* renamed from: e  reason: collision with root package name */
        final int f8468e;

        /* renamed from: f  reason: collision with root package name */
        private final long f8469f;

        /* renamed from: g  reason: collision with root package name */
        private Bitmap f8470g;

        a(Handler handler, int i4, long j4) {
            this.f8467d = handler;
            this.f8468e = i4;
            this.f8469f = j4;
        }

        Bitmap b() {
            return this.f8470g;
        }

        @Override // com.bumptech.glide.request.target.p
        /* renamed from: c */
        public void q(Bitmap bitmap, com.bumptech.glide.request.transition.f<? super Bitmap> fVar) {
            this.f8470g = bitmap;
            this.f8467d.sendMessageAtTime(this.f8467d.obtainMessage(1, this), this.f8469f);
        }

        @Override // com.bumptech.glide.request.target.p
        public void k(@Nullable Drawable drawable) {
            this.f8470g = null;
        }
    }

    /* compiled from: WebpFrameLoader.java */
    /* loaded from: classes.dex */
    public interface b {
        void a();
    }

    /* compiled from: WebpFrameLoader.java */
    /* loaded from: classes.dex */
    private class c implements Handler.Callback {

        /* renamed from: b  reason: collision with root package name */
        static final int f8471b = 1;

        /* renamed from: c  reason: collision with root package name */
        static final int f8472c = 2;

        c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i4 = message.what;
            if (i4 == 1) {
                o.this.o((a) message.obj);
                return true;
            } else if (i4 == 2) {
                o.this.f8451d.A((a) message.obj);
                return false;
            } else {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebpFrameLoader.java */
    /* loaded from: classes.dex */
    public interface d {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebpFrameLoader.java */
    /* loaded from: classes.dex */
    public static class e implements com.bumptech.glide.load.c {

        /* renamed from: c  reason: collision with root package name */
        private final com.bumptech.glide.load.c f8474c;

        /* renamed from: d  reason: collision with root package name */
        private final int f8475d;

        e(com.bumptech.glide.load.c cVar, int i4) {
            this.f8474c = cVar;
            this.f8475d = i4;
        }

        @Override // com.bumptech.glide.load.c
        public void b(@NonNull MessageDigest messageDigest) {
            messageDigest.update(ByteBuffer.allocate(12).putInt(this.f8475d).array());
            this.f8474c.b(messageDigest);
        }

        @Override // com.bumptech.glide.load.c
        public boolean equals(Object obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                return this.f8474c.equals(eVar.f8474c) && this.f8475d == eVar.f8475d;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.c
        public int hashCode() {
            return (this.f8474c.hashCode() * 31) + this.f8475d;
        }
    }

    public o(com.bumptech.glide.c cVar, i iVar, int i4, int i10, com.bumptech.glide.load.i<Bitmap> iVar2, Bitmap bitmap) {
        this(cVar.h(), com.bumptech.glide.c.E(cVar.j()), iVar, null, k(com.bumptech.glide.c.E(cVar.j()), i4, i10), iVar2, bitmap);
    }

    private com.bumptech.glide.load.c g(int i4) {
        return new e(new com.bumptech.glide.signature.e(this.f8448a), i4);
    }

    private static com.bumptech.glide.j<Bitmap> k(com.bumptech.glide.k kVar, int i4, int i10) {
        return kVar.v().a(com.bumptech.glide.request.h.X0(com.bumptech.glide.load.engine.j.f8861b).Q0(true).G0(true).v0(i4, i10));
    }

    private void n() {
        if (!this.f8453f || this.f8454g) {
            return;
        }
        if (this.f8455h) {
            com.bumptech.glide.util.m.a(this.f8462o == null, "Pending target must be null when starting from the first frame");
            this.f8448a.m();
            this.f8455h = false;
        }
        a aVar = this.f8462o;
        if (aVar != null) {
            this.f8462o = null;
            o(aVar);
            return;
        }
        this.f8454g = true;
        int l10 = this.f8448a.l();
        this.f8448a.f();
        int o9 = this.f8448a.o();
        this.f8459l = new a(this.f8449b, o9, SystemClock.uptimeMillis() + l10);
        this.f8456i.a(com.bumptech.glide.request.h.o1(g(o9)).G0(this.f8448a.u().e())).m(this.f8448a).h1(this.f8459l);
    }

    private void p() {
        Bitmap bitmap = this.f8460m;
        if (bitmap != null) {
            this.f8452e.d(bitmap);
            this.f8460m = null;
        }
    }

    private void t() {
        if (this.f8453f) {
            return;
        }
        this.f8453f = true;
        this.f8458k = false;
        n();
    }

    private void u() {
        this.f8453f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f8450c.clear();
        p();
        u();
        a aVar = this.f8457j;
        if (aVar != null) {
            this.f8451d.A(aVar);
            this.f8457j = null;
        }
        a aVar2 = this.f8459l;
        if (aVar2 != null) {
            this.f8451d.A(aVar2);
            this.f8459l = null;
        }
        a aVar3 = this.f8462o;
        if (aVar3 != null) {
            this.f8451d.A(aVar3);
            this.f8462o = null;
        }
        this.f8448a.clear();
        this.f8458k = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer b() {
        return this.f8448a.i().asReadOnlyBuffer();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap c() {
        a aVar = this.f8457j;
        return aVar != null ? aVar.b() : this.f8460m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        a aVar = this.f8457j;
        if (aVar != null) {
            return aVar.f8468e;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap e() {
        return this.f8460m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f8448a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bumptech.glide.load.i<Bitmap> h() {
        return this.f8461n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        return this.f8466s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        return this.f8448a.j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int l() {
        return this.f8448a.r() + this.f8464q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m() {
        return this.f8465r;
    }

    void o(a aVar) {
        d dVar = this.f8463p;
        if (dVar != null) {
            dVar.a();
        }
        this.f8454g = false;
        if (this.f8458k) {
            this.f8449b.obtainMessage(2, aVar).sendToTarget();
        } else if (!this.f8453f) {
            if (this.f8455h) {
                this.f8449b.obtainMessage(2, aVar).sendToTarget();
            } else {
                this.f8462o = aVar;
            }
        } else {
            if (aVar.b() != null) {
                p();
                a aVar2 = this.f8457j;
                this.f8457j = aVar;
                for (int size = this.f8450c.size() - 1; size >= 0; size--) {
                    this.f8450c.get(size).a();
                }
                if (aVar2 != null) {
                    this.f8449b.obtainMessage(2, aVar2).sendToTarget();
                }
            }
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(com.bumptech.glide.load.i<Bitmap> iVar, Bitmap bitmap) {
        this.f8461n = (com.bumptech.glide.load.i) com.bumptech.glide.util.m.d(iVar);
        this.f8460m = (Bitmap) com.bumptech.glide.util.m.d(bitmap);
        this.f8456i = this.f8456i.a(new com.bumptech.glide.request.h().J0(iVar));
        this.f8464q = com.bumptech.glide.util.o.h(bitmap);
        this.f8465r = bitmap.getWidth();
        this.f8466s = bitmap.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        com.bumptech.glide.util.m.a(!this.f8453f, "Can't restart a running animation");
        this.f8455h = true;
        a aVar = this.f8462o;
        if (aVar != null) {
            this.f8451d.A(aVar);
            this.f8462o = null;
        }
    }

    void s(@Nullable d dVar) {
        this.f8463p = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(b bVar) {
        if (!this.f8458k) {
            if (!this.f8450c.contains(bVar)) {
                boolean isEmpty = this.f8450c.isEmpty();
                this.f8450c.add(bVar);
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
        this.f8450c.remove(bVar);
        if (this.f8450c.isEmpty()) {
            u();
        }
    }

    o(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, com.bumptech.glide.k kVar, i iVar, Handler handler, com.bumptech.glide.j<Bitmap> jVar, com.bumptech.glide.load.i<Bitmap> iVar2, Bitmap bitmap) {
        this.f8450c = new ArrayList();
        this.f8453f = false;
        this.f8454g = false;
        this.f8455h = false;
        this.f8451d = kVar;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new c()) : handler;
        this.f8452e = eVar;
        this.f8449b = handler;
        this.f8456i = jVar;
        this.f8448a = iVar;
        q(iVar2, bitmap);
    }
}
