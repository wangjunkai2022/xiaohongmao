package com.google.android.exoplayer2.source;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.h0;
import com.google.android.exoplayer2.source.z;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MediaSourceEventListener.java */
/* loaded from: classes2.dex */
public interface h0 {

    /* compiled from: MediaSourceEventListener.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f24939a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final z.a f24940b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList<C0175a> f24941c;

        /* renamed from: d  reason: collision with root package name */
        private final long f24942d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MediaSourceEventListener.java */
        /* renamed from: com.google.android.exoplayer2.source.h0$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0175a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f24943a;

            /* renamed from: b  reason: collision with root package name */
            public h0 f24944b;

            public C0175a(Handler handler, h0 h0Var) {
                this.f24943a = handler;
                this.f24944b = h0Var;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private long h(long j4) {
            long d4 = com.google.android.exoplayer2.i.d(j4);
            return d4 == com.google.android.exoplayer2.i.f23649b ? com.google.android.exoplayer2.i.f23649b : this.f24942d + d4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(h0 h0Var, s sVar) {
            h0Var.H(this.f24939a, this.f24940b, sVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(h0 h0Var, o oVar, s sVar) {
            h0Var.I(this.f24939a, this.f24940b, oVar, sVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(h0 h0Var, o oVar, s sVar) {
            h0Var.j0(this.f24939a, this.f24940b, oVar, sVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(h0 h0Var, o oVar, s sVar, IOException iOException, boolean z9) {
            h0Var.n0(this.f24939a, this.f24940b, oVar, sVar, iOException, z9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(h0 h0Var, o oVar, s sVar) {
            h0Var.J(this.f24939a, this.f24940b, oVar, sVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(h0 h0Var, z.a aVar, s sVar) {
            h0Var.W(this.f24939a, aVar, sVar);
        }

        public void A(o oVar, int i4, int i10, @Nullable Format format, int i11, @Nullable Object obj, long j4, long j10) {
            B(oVar, new s(i4, i10, format, i11, obj, h(j4), h(j10)));
        }

        public void B(final o oVar, final s sVar) {
            Iterator<C0175a> it = this.f24941c.iterator();
            while (it.hasNext()) {
                C0175a next = it.next();
                final h0 h0Var = next.f24944b;
                com.google.android.exoplayer2.util.z0.Y0(next.f24943a, new Runnable() { // from class: com.google.android.exoplayer2.source.c0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h0.a.this.o(h0Var, oVar, sVar);
                    }
                });
            }
        }

        public void C(h0 h0Var) {
            Iterator<C0175a> it = this.f24941c.iterator();
            while (it.hasNext()) {
                C0175a next = it.next();
                if (next.f24944b == h0Var) {
                    this.f24941c.remove(next);
                }
            }
        }

        public void D(int i4, long j4, long j10) {
            E(new s(1, i4, null, 3, null, h(j4), h(j10)));
        }

        public void E(final s sVar) {
            final z.a aVar = (z.a) com.google.android.exoplayer2.util.a.g(this.f24940b);
            Iterator<C0175a> it = this.f24941c.iterator();
            while (it.hasNext()) {
                C0175a next = it.next();
                final h0 h0Var = next.f24944b;
                com.google.android.exoplayer2.util.z0.Y0(next.f24943a, new Runnable() { // from class: com.google.android.exoplayer2.source.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h0.a.this.p(h0Var, aVar, sVar);
                    }
                });
            }
        }

        @CheckResult
        public a F(int i4, @Nullable z.a aVar, long j4) {
            return new a(this.f24941c, i4, aVar, j4);
        }

        public void g(Handler handler, h0 h0Var) {
            com.google.android.exoplayer2.util.a.g(handler);
            com.google.android.exoplayer2.util.a.g(h0Var);
            this.f24941c.add(new C0175a(handler, h0Var));
        }

        public void i(int i4, @Nullable Format format, int i10, @Nullable Object obj, long j4) {
            j(new s(1, i4, format, i10, obj, h(j4), com.google.android.exoplayer2.i.f23649b));
        }

        public void j(final s sVar) {
            Iterator<C0175a> it = this.f24941c.iterator();
            while (it.hasNext()) {
                C0175a next = it.next();
                final h0 h0Var = next.f24944b;
                com.google.android.exoplayer2.util.z0.Y0(next.f24943a, new Runnable() { // from class: com.google.android.exoplayer2.source.f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h0.a.this.k(h0Var, sVar);
                    }
                });
            }
        }

        public void q(o oVar, int i4) {
            r(oVar, i4, -1, null, 0, null, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b);
        }

        public void r(o oVar, int i4, int i10, @Nullable Format format, int i11, @Nullable Object obj, long j4, long j10) {
            s(oVar, new s(i4, i10, format, i11, obj, h(j4), h(j10)));
        }

        public void s(final o oVar, final s sVar) {
            Iterator<C0175a> it = this.f24941c.iterator();
            while (it.hasNext()) {
                C0175a next = it.next();
                final h0 h0Var = next.f24944b;
                com.google.android.exoplayer2.util.z0.Y0(next.f24943a, new Runnable() { // from class: com.google.android.exoplayer2.source.d0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h0.a.this.l(h0Var, oVar, sVar);
                    }
                });
            }
        }

        public void t(o oVar, int i4) {
            u(oVar, i4, -1, null, 0, null, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b);
        }

        public void u(o oVar, int i4, int i10, @Nullable Format format, int i11, @Nullable Object obj, long j4, long j10) {
            v(oVar, new s(i4, i10, format, i11, obj, h(j4), h(j10)));
        }

        public void v(final o oVar, final s sVar) {
            Iterator<C0175a> it = this.f24941c.iterator();
            while (it.hasNext()) {
                C0175a next = it.next();
                final h0 h0Var = next.f24944b;
                com.google.android.exoplayer2.util.z0.Y0(next.f24943a, new Runnable() { // from class: com.google.android.exoplayer2.source.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h0.a.this.m(h0Var, oVar, sVar);
                    }
                });
            }
        }

        public void w(o oVar, int i4, int i10, @Nullable Format format, int i11, @Nullable Object obj, long j4, long j10, IOException iOException, boolean z9) {
            y(oVar, new s(i4, i10, format, i11, obj, h(j4), h(j10)), iOException, z9);
        }

        public void x(o oVar, int i4, IOException iOException, boolean z9) {
            w(oVar, i4, -1, null, 0, null, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b, iOException, z9);
        }

        public void y(final o oVar, final s sVar, final IOException iOException, final boolean z9) {
            Iterator<C0175a> it = this.f24941c.iterator();
            while (it.hasNext()) {
                C0175a next = it.next();
                final h0 h0Var = next.f24944b;
                com.google.android.exoplayer2.util.z0.Y0(next.f24943a, new Runnable() { // from class: com.google.android.exoplayer2.source.e0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h0.a.this.n(h0Var, oVar, sVar, iOException, z9);
                    }
                });
            }
        }

        public void z(o oVar, int i4) {
            A(oVar, i4, -1, null, 0, null, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b);
        }

        private a(CopyOnWriteArrayList<C0175a> copyOnWriteArrayList, int i4, @Nullable z.a aVar, long j4) {
            this.f24941c = copyOnWriteArrayList;
            this.f24939a = i4;
            this.f24940b = aVar;
            this.f24942d = j4;
        }
    }

    void H(int i4, @Nullable z.a aVar, s sVar);

    void I(int i4, @Nullable z.a aVar, o oVar, s sVar);

    void J(int i4, @Nullable z.a aVar, o oVar, s sVar);

    void W(int i4, z.a aVar, s sVar);

    void j0(int i4, @Nullable z.a aVar, o oVar, s sVar);

    void n0(int i4, @Nullable z.a aVar, o oVar, s sVar, IOException iOException, boolean z9);
}
