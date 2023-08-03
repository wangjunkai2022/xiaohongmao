package com.google.android.exoplayer2.drm;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.util.z0;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: DrmSessionEventListener.java */
/* loaded from: classes2.dex */
public interface s {

    /* compiled from: DrmSessionEventListener.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21813a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final z.a f21814b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList<C0158a> f21815c;

        /* compiled from: DrmSessionEventListener.java */
        /* renamed from: com.google.android.exoplayer2.drm.s$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static final class C0158a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f21816a;

            /* renamed from: b  reason: collision with root package name */
            public s f21817b;

            public C0158a(Handler handler, s sVar) {
                this.f21816a = handler;
                this.f21817b = sVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(s sVar) {
            sVar.g0(this.f21813a, this.f21814b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(s sVar) {
            sVar.N(this.f21813a, this.f21814b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(s sVar) {
            sVar.p0(this.f21813a, this.f21814b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(s sVar, int i4) {
            sVar.O(this.f21813a, this.f21814b);
            sVar.k0(this.f21813a, this.f21814b, i4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(s sVar, Exception exc) {
            sVar.Y(this.f21813a, this.f21814b, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(s sVar) {
            sVar.l0(this.f21813a, this.f21814b);
        }

        public void g(Handler handler, s sVar) {
            com.google.android.exoplayer2.util.a.g(handler);
            com.google.android.exoplayer2.util.a.g(sVar);
            this.f21815c.add(new C0158a(handler, sVar));
        }

        public void h() {
            Iterator<C0158a> it = this.f21815c.iterator();
            while (it.hasNext()) {
                C0158a next = it.next();
                final s sVar = next.f21817b;
                z0.Y0(next.f21816a, new Runnable() { // from class: com.google.android.exoplayer2.drm.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.n(sVar);
                    }
                });
            }
        }

        public void i() {
            Iterator<C0158a> it = this.f21815c.iterator();
            while (it.hasNext()) {
                C0158a next = it.next();
                final s sVar = next.f21817b;
                z0.Y0(next.f21816a, new Runnable() { // from class: com.google.android.exoplayer2.drm.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.o(sVar);
                    }
                });
            }
        }

        public void j() {
            Iterator<C0158a> it = this.f21815c.iterator();
            while (it.hasNext()) {
                C0158a next = it.next();
                final s sVar = next.f21817b;
                z0.Y0(next.f21816a, new Runnable() { // from class: com.google.android.exoplayer2.drm.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.p(sVar);
                    }
                });
            }
        }

        public void k(final int i4) {
            Iterator<C0158a> it = this.f21815c.iterator();
            while (it.hasNext()) {
                C0158a next = it.next();
                final s sVar = next.f21817b;
                z0.Y0(next.f21816a, new Runnable() { // from class: com.google.android.exoplayer2.drm.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.q(sVar, i4);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Iterator<C0158a> it = this.f21815c.iterator();
            while (it.hasNext()) {
                C0158a next = it.next();
                final s sVar = next.f21817b;
                z0.Y0(next.f21816a, new Runnable() { // from class: com.google.android.exoplayer2.drm.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.r(sVar, exc);
                    }
                });
            }
        }

        public void m() {
            Iterator<C0158a> it = this.f21815c.iterator();
            while (it.hasNext()) {
                C0158a next = it.next();
                final s sVar = next.f21817b;
                z0.Y0(next.f21816a, new Runnable() { // from class: com.google.android.exoplayer2.drm.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.s(sVar);
                    }
                });
            }
        }

        public void t(s sVar) {
            Iterator<C0158a> it = this.f21815c.iterator();
            while (it.hasNext()) {
                C0158a next = it.next();
                if (next.f21817b == sVar) {
                    this.f21815c.remove(next);
                }
            }
        }

        @CheckResult
        public a u(int i4, @Nullable z.a aVar) {
            return new a(this.f21815c, i4, aVar);
        }

        private a(CopyOnWriteArrayList<C0158a> copyOnWriteArrayList, int i4, @Nullable z.a aVar) {
            this.f21815c = copyOnWriteArrayList;
            this.f21813a = i4;
            this.f21814b = aVar;
        }
    }

    void N(int i4, @Nullable z.a aVar);

    @Deprecated
    void O(int i4, @Nullable z.a aVar);

    void Y(int i4, @Nullable z.a aVar, Exception exc);

    void g0(int i4, @Nullable z.a aVar);

    void k0(int i4, @Nullable z.a aVar, int i10);

    void l0(int i4, @Nullable z.a aVar);

    void p0(int i4, @Nullable z.a aVar);
}
