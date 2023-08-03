package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.m;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: ListenerSet.java */
/* loaded from: classes2.dex */
public final class v<T> {

    /* renamed from: h  reason: collision with root package name */
    private static final int f27711h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final int f27712i = 1;

    /* renamed from: a  reason: collision with root package name */
    private final d f27713a;

    /* renamed from: b  reason: collision with root package name */
    private final q f27714b;

    /* renamed from: c  reason: collision with root package name */
    private final b<T> f27715c;

    /* renamed from: d  reason: collision with root package name */
    private final CopyOnWriteArraySet<c<T>> f27716d;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayDeque<Runnable> f27717e;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<Runnable> f27718f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f27719g;

    /* compiled from: ListenerSet.java */
    /* loaded from: classes2.dex */
    public interface a<T> {
        void invoke(T t9);
    }

    /* compiled from: ListenerSet.java */
    /* loaded from: classes2.dex */
    public interface b<T> {
        void a(T t9, m mVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListenerSet.java */
    /* loaded from: classes2.dex */
    public static final class c<T> {
        @r7.g

        /* renamed from: a  reason: collision with root package name */
        public final T f27720a;

        /* renamed from: b  reason: collision with root package name */
        private m.b f27721b = new m.b();

        /* renamed from: c  reason: collision with root package name */
        private boolean f27722c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f27723d;

        public c(@r7.g T t9) {
            this.f27720a = t9;
        }

        public void a(int i4, a<T> aVar) {
            if (this.f27723d) {
                return;
            }
            if (i4 != -1) {
                this.f27721b.a(i4);
            }
            this.f27722c = true;
            aVar.invoke(this.f27720a);
        }

        public void b(b<T> bVar) {
            if (this.f27723d || !this.f27722c) {
                return;
            }
            m e4 = this.f27721b.e();
            this.f27721b = new m.b();
            this.f27722c = false;
            bVar.a(this.f27720a, e4);
        }

        public void c(b<T> bVar) {
            this.f27723d = true;
            if (this.f27722c) {
                bVar.a(this.f27720a, this.f27721b.e());
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.f27720a.equals(((c) obj).f27720a);
        }

        public int hashCode() {
            return this.f27720a.hashCode();
        }
    }

    public v(Looper looper, d dVar, b<T> bVar) {
        this(new CopyOnWriteArraySet(), looper, dVar, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f(Message message) {
        int i4 = message.what;
        if (i4 == 0) {
            Iterator<c<T>> it = this.f27716d.iterator();
            while (it.hasNext()) {
                it.next().b(this.f27715c);
                if (this.f27714b.f(0)) {
                    break;
                }
            }
        } else if (i4 == 1) {
            l(message.arg1, (a) message.obj);
            j();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(CopyOnWriteArraySet copyOnWriteArraySet, int i4, a aVar) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(i4, aVar);
        }
    }

    public void c(T t9) {
        if (this.f27719g) {
            return;
        }
        com.google.android.exoplayer2.util.a.g(t9);
        this.f27716d.add(new c<>(t9));
    }

    @CheckResult
    public v<T> d(Looper looper, b<T> bVar) {
        return new v<>(this.f27716d, looper, this.f27713a, bVar);
    }

    public void e() {
        if (this.f27718f.isEmpty()) {
            return;
        }
        if (!this.f27714b.f(0)) {
            this.f27714b.d(0).b();
        }
        boolean z9 = !this.f27717e.isEmpty();
        this.f27717e.addAll(this.f27718f);
        this.f27718f.clear();
        if (z9) {
            return;
        }
        while (!this.f27717e.isEmpty()) {
            this.f27717e.peekFirst().run();
            this.f27717e.removeFirst();
        }
    }

    public void h(int i4, a<T> aVar) {
        this.f27714b.g(1, i4, 0, aVar).b();
    }

    public void i(final int i4, final a<T> aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f27716d);
        this.f27718f.add(new Runnable() { // from class: com.google.android.exoplayer2.util.u
            @Override // java.lang.Runnable
            public final void run() {
                v.g(copyOnWriteArraySet, i4, aVar);
            }
        });
    }

    public void j() {
        Iterator<c<T>> it = this.f27716d.iterator();
        while (it.hasNext()) {
            it.next().c(this.f27715c);
        }
        this.f27716d.clear();
        this.f27719g = true;
    }

    public void k(T t9) {
        Iterator<c<T>> it = this.f27716d.iterator();
        while (it.hasNext()) {
            c<T> next = it.next();
            if (next.f27720a.equals(t9)) {
                next.c(this.f27715c);
                this.f27716d.remove(next);
            }
        }
    }

    public void l(int i4, a<T> aVar) {
        i(i4, aVar);
        e();
    }

    private v(CopyOnWriteArraySet<c<T>> copyOnWriteArraySet, Looper looper, d dVar, b<T> bVar) {
        this.f27713a = dVar;
        this.f27716d = copyOnWriteArraySet;
        this.f27715c = bVar;
        this.f27717e = new ArrayDeque<>();
        this.f27718f = new ArrayDeque<>();
        this.f27714b = dVar.d(looper, new Handler.Callback() { // from class: com.google.android.exoplayer2.util.t
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean f10;
                f10 = v.this.f(message);
                return f10;
            }
        });
    }
}
