package com.facebook.imagepipeline.producers;

import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.util.TriState;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: MultiplexProducer.java */
@s7.d
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class j0<K, T extends Closeable> implements q0<T> {

    /* renamed from: f  reason: collision with root package name */
    public static final String f13030f = "started_as_prefetch";
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: a  reason: collision with root package name */
    final Map<K, j0<K, T>.b> f13031a;

    /* renamed from: b  reason: collision with root package name */
    private final q0<T> f13032b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f13033c;

    /* renamed from: d  reason: collision with root package name */
    private final String f13034d;

    /* renamed from: e  reason: collision with root package name */
    private final String f13035e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultiplexProducer.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private final K f13036a;

        /* renamed from: b  reason: collision with root package name */
        private final CopyOnWriteArraySet<Pair<l<T>, s0>> f13037b = com.facebook.common.internal.l.a();
        @r7.h
        @s7.a("Multiplexer.this")

        /* renamed from: c  reason: collision with root package name */
        private T f13038c;
        @s7.a("Multiplexer.this")

        /* renamed from: d  reason: collision with root package name */
        private float f13039d;
        @s7.a("Multiplexer.this")

        /* renamed from: e  reason: collision with root package name */
        private int f13040e;
        @r7.h
        @s7.a("Multiplexer.this")

        /* renamed from: f  reason: collision with root package name */
        private d f13041f;
        @r7.h
        @s7.a("Multiplexer.this")

        /* renamed from: g  reason: collision with root package name */
        private j0<K, T>.b.C0107b f13042g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MultiplexProducer.java */
        /* loaded from: classes.dex */
        public class a extends e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Pair f13044a;

            a(final Pair val$consumerContextPair) {
                this.f13044a = val$consumerContextPair;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
            public void a() {
                d.b(b.this.r());
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
            public void b() {
                boolean remove;
                List list;
                d dVar;
                List list2;
                List list3;
                synchronized (b.this) {
                    remove = b.this.f13037b.remove(this.f13044a);
                    list = null;
                    if (!remove) {
                        dVar = null;
                        list2 = null;
                    } else if (b.this.f13037b.isEmpty()) {
                        dVar = b.this.f13041f;
                        list2 = null;
                    } else {
                        List s9 = b.this.s();
                        list2 = b.this.t();
                        list3 = b.this.r();
                        dVar = null;
                        list = s9;
                    }
                    list3 = list2;
                }
                d.t(list);
                d.u(list2);
                d.b(list3);
                if (dVar != null) {
                    if (j0.this.f13033c && !dVar.q()) {
                        d.u(dVar.A(Priority.LOW));
                    } else {
                        dVar.v();
                    }
                }
                if (remove) {
                    ((l) this.f13044a.first).b();
                }
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
            public void c() {
                d.u(b.this.t());
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
            public void d() {
                d.t(b.this.s());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MultiplexProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.j0$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0107b extends com.facebook.imagepipeline.producers.b<T> {
            private C0107b() {
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void h() {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onCancellation");
                    }
                    b.this.m(this);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void i(Throwable t9) {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onFailure");
                    }
                    b.this.n(this, t9);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void k(float progress) {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onProgressUpdate");
                    }
                    b.this.p(this, progress);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.imagepipeline.producers.b
            /* renamed from: r */
            public void j(@r7.h T newResult, int status) {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onNewResult");
                    }
                    b.this.o(this, newResult, status);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }
        }

        public b(K key) {
            this.f13036a = key;
        }

        private void g(final Pair<l<T>, s0> consumerContextPair, final s0 producerContext) {
            producerContext.f(new a(consumerContextPair));
        }

        private void i(@r7.h Closeable obj) {
            if (obj != null) {
                try {
                    obj.close();
                } catch (IOException e4) {
                    throw new RuntimeException(e4);
                }
            }
        }

        private synchronized boolean j() {
            Iterator<Pair<l<T>, s0>> it = this.f13037b.iterator();
            while (it.hasNext()) {
                if (((s0) it.next().second).l()) {
                    return true;
                }
            }
            return false;
        }

        private synchronized boolean k() {
            Iterator<Pair<l<T>, s0>> it = this.f13037b.iterator();
            while (it.hasNext()) {
                if (!((s0) it.next().second).q()) {
                    return false;
                }
            }
            return true;
        }

        private synchronized Priority l() {
            Priority priority;
            priority = Priority.LOW;
            Iterator<Pair<l<T>, s0>> it = this.f13037b.iterator();
            while (it.hasNext()) {
                priority = Priority.getHigherPriority(priority, ((s0) it.next().second).getPriority());
            }
            return priority;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q(TriState startedAsPrefetch) {
            synchronized (this) {
                boolean z9 = true;
                com.facebook.common.internal.j.d(Boolean.valueOf(this.f13041f == null));
                if (this.f13042g != null) {
                    z9 = false;
                }
                com.facebook.common.internal.j.d(Boolean.valueOf(z9));
                if (this.f13037b.isEmpty()) {
                    j0.this.k(this.f13036a, this);
                    return;
                }
                s0 s0Var = (s0) this.f13037b.iterator().next().second;
                d dVar = new d(s0Var.c(), s0Var.getId(), s0Var.k(), s0Var.d(), s0Var.s(), k(), j(), l(), s0Var.g());
                this.f13041f = dVar;
                dVar.p(s0Var.getExtras());
                if (startedAsPrefetch.isSet()) {
                    this.f13041f.e(j0.f13030f, Boolean.valueOf(startedAsPrefetch.asBoolean()));
                }
                j0<K, T>.b.C0107b c0107b = new C0107b();
                this.f13042g = c0107b;
                j0.this.f13032b.b(c0107b, this.f13041f);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @r7.h
        public synchronized List<t0> r() {
            d dVar = this.f13041f;
            if (dVar == null) {
                return null;
            }
            return dVar.y(j());
        }

        /* JADX INFO: Access modifiers changed from: private */
        @r7.h
        public synchronized List<t0> s() {
            d dVar = this.f13041f;
            if (dVar == null) {
                return null;
            }
            return dVar.z(k());
        }

        /* JADX INFO: Access modifiers changed from: private */
        @r7.h
        public synchronized List<t0> t() {
            d dVar = this.f13041f;
            if (dVar == null) {
                return null;
            }
            return dVar.A(l());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean h(final l<T> consumer, final s0 producerContext) {
            Pair<l<T>, s0> create = Pair.create(consumer, producerContext);
            synchronized (this) {
                if (j0.this.i(this.f13036a) != this) {
                    return false;
                }
                this.f13037b.add(create);
                List<t0> s9 = s();
                List<t0> t9 = t();
                List<t0> r9 = r();
                Closeable closeable = this.f13038c;
                float f10 = this.f13039d;
                int i4 = this.f13040e;
                d.t(s9);
                d.u(t9);
                d.b(r9);
                synchronized (create) {
                    synchronized (this) {
                        if (closeable != this.f13038c) {
                            closeable = null;
                        } else if (closeable != null) {
                            closeable = j0.this.g(closeable);
                        }
                    }
                    if (closeable != null) {
                        if (f10 > 0.0f) {
                            consumer.d(f10);
                        }
                        consumer.c(closeable, i4);
                        i(closeable);
                    }
                }
                g(create, producerContext);
                return true;
            }
        }

        public void m(final j0<K, T>.b.C0107b forwardingConsumer) {
            synchronized (this) {
                if (this.f13042g != forwardingConsumer) {
                    return;
                }
                this.f13042g = null;
                this.f13041f = null;
                i(this.f13038c);
                this.f13038c = null;
                q(TriState.UNSET);
            }
        }

        public void n(final j0<K, T>.b.C0107b consumer, final Throwable t9) {
            synchronized (this) {
                if (this.f13042g != consumer) {
                    return;
                }
                Iterator<Pair<l<T>, s0>> it = this.f13037b.iterator();
                this.f13037b.clear();
                j0.this.k(this.f13036a, this);
                i(this.f13038c);
                this.f13038c = null;
                while (it.hasNext()) {
                    Pair<l<T>, s0> next = it.next();
                    synchronized (next) {
                        ((s0) next.second).k().k((s0) next.second, j0.this.f13034d, t9, null);
                        ((l) next.first).a(t9);
                    }
                }
            }
        }

        public void o(final j0<K, T>.b.C0107b consumer, @r7.h final T closeableObject, final int status) {
            synchronized (this) {
                if (this.f13042g != consumer) {
                    return;
                }
                i(this.f13038c);
                this.f13038c = null;
                Iterator<Pair<l<T>, s0>> it = this.f13037b.iterator();
                int size = this.f13037b.size();
                if (com.facebook.imagepipeline.producers.b.g(status)) {
                    this.f13038c = (T) j0.this.g(closeableObject);
                    this.f13040e = status;
                } else {
                    this.f13037b.clear();
                    j0.this.k(this.f13036a, this);
                }
                while (it.hasNext()) {
                    Pair<l<T>, s0> next = it.next();
                    synchronized (next) {
                        if (com.facebook.imagepipeline.producers.b.f(status)) {
                            ((s0) next.second).k().j((s0) next.second, j0.this.f13034d, null);
                            d dVar = this.f13041f;
                            if (dVar != null) {
                                ((s0) next.second).p(dVar.getExtras());
                            }
                            ((s0) next.second).e(j0.this.f13035e, Integer.valueOf(size));
                        }
                        ((l) next.first).c(closeableObject, status);
                    }
                }
            }
        }

        public void p(j0<K, T>.b.C0107b forwardingConsumer, float progress) {
            synchronized (this) {
                if (this.f13042g != forwardingConsumer) {
                    return;
                }
                this.f13039d = progress;
                Iterator<Pair<l<T>, s0>> it = this.f13037b.iterator();
                while (it.hasNext()) {
                    Pair<l<T>, s0> next = it.next();
                    synchronized (next) {
                        ((l) next.first).d(progress);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j0(q0<T> inputProducer, String producerName, @s0.a String dedupedRequestsCountKey) {
        this(inputProducer, producerName, dedupedRequestsCountKey, false);
    }

    private synchronized j0<K, T>.b h(K key) {
        j0<K, T>.b bVar;
        bVar = new b(key);
        this.f13031a.put(key, bVar);
        return bVar;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(l<T> consumer, s0 context) {
        boolean z9;
        j0<K, T>.b i4;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#produceResults");
            }
            context.k().d(context, this.f13034d);
            K j4 = j(context);
            do {
                z9 = false;
                synchronized (this) {
                    i4 = i(j4);
                    if (i4 == null) {
                        i4 = h(j4);
                        z9 = true;
                    }
                }
            } while (!i4.h(consumer, context));
            if (z9) {
                i4.q(TriState.valueOf(context.q()));
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    @r7.h
    protected abstract T g(@r7.h T object);

    @r7.h
    protected synchronized j0<K, T>.b i(K key) {
        return this.f13031a.get(key);
    }

    protected abstract K j(s0 producerContext);

    protected synchronized void k(K key, j0<K, T>.b multiplexer) {
        if (this.f13031a.get(key) == multiplexer) {
            this.f13031a.remove(key);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j0(q0<T> inputProducer, String producerName, @s0.a String dedupedRequestsCountKey, boolean keepCancelledFetchAsLowPriority) {
        this.f13032b = inputProducer;
        this.f13031a = new HashMap();
        this.f13033c = keepCancelledFetchAsLowPriority;
        this.f13034d = producerName;
        this.f13035e = dedupedRequestsCountKey;
    }
}
