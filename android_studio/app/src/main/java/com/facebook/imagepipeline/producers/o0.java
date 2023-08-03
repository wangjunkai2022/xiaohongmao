package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: PostprocessorProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class o0 implements q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13155d = "PostprocessorProducer";
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    static final String f13156e = "Postprocessor";

    /* renamed from: a  reason: collision with root package name */
    private final q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f13157a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.bitmaps.f f13158b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f13159c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes.dex */
    public class b extends p<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: i  reason: collision with root package name */
        private final u0 f13160i;

        /* renamed from: j  reason: collision with root package name */
        private final s0 f13161j;

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.imagepipeline.request.d f13162k;
        @s7.a("PostprocessorConsumer.this")

        /* renamed from: l  reason: collision with root package name */
        private boolean f13163l;
        @r7.h
        @s7.a("PostprocessorConsumer.this")

        /* renamed from: m  reason: collision with root package name */
        private com.facebook.common.references.a<com.facebook.imagepipeline.image.c> f13164m;
        @s7.a("PostprocessorConsumer.this")

        /* renamed from: n  reason: collision with root package name */
        private int f13165n;
        @s7.a("PostprocessorConsumer.this")

        /* renamed from: o  reason: collision with root package name */
        private boolean f13166o;
        @s7.a("PostprocessorConsumer.this")

        /* renamed from: p  reason: collision with root package name */
        private boolean f13167p;

        /* compiled from: PostprocessorProducer.java */
        /* loaded from: classes.dex */
        class a extends e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ o0 f13169a;

            a(final o0 val$this$0) {
                this.f13169a = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
            public void b() {
                b.this.E();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: PostprocessorProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.o0$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0108b implements Runnable {
            RunnableC0108b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                com.facebook.common.references.a aVar;
                int i4;
                synchronized (b.this) {
                    aVar = b.this.f13164m;
                    i4 = b.this.f13165n;
                    b.this.f13164m = null;
                    b.this.f13166o = false;
                }
                if (com.facebook.common.references.a.A(aVar)) {
                    try {
                        b.this.B(aVar, i4);
                    } finally {
                        com.facebook.common.references.a.k(aVar);
                    }
                }
                b.this.z();
            }
        }

        public b(l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, u0 listener, com.facebook.imagepipeline.request.d postprocessor, s0 producerContext) {
            super(consumer);
            this.f13164m = null;
            this.f13165n = 0;
            this.f13166o = false;
            this.f13167p = false;
            this.f13160i = listener;
            this.f13162k = postprocessor;
            this.f13161j = producerContext;
            producerContext.f(new a(o0.this));
        }

        private boolean A() {
            synchronized (this) {
                if (this.f13163l) {
                    return false;
                }
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f13164m;
                this.f13164m = null;
                this.f13163l = true;
                com.facebook.common.references.a.k(aVar);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void B(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> sourceImageRef, int status) {
            com.facebook.common.internal.j.d(Boolean.valueOf(com.facebook.common.references.a.A(sourceImageRef)));
            if (!K(sourceImageRef.q())) {
                G(sourceImageRef, status);
                return;
            }
            this.f13160i.d(this.f13161j, o0.f13155d);
            try {
                try {
                    com.facebook.common.references.a<com.facebook.imagepipeline.image.c> I = I(sourceImageRef.q());
                    u0 u0Var = this.f13160i;
                    s0 s0Var = this.f13161j;
                    u0Var.j(s0Var, o0.f13155d, C(u0Var, s0Var, this.f13162k));
                    G(I, status);
                    com.facebook.common.references.a.k(I);
                } catch (Exception e4) {
                    u0 u0Var2 = this.f13160i;
                    s0 s0Var2 = this.f13161j;
                    u0Var2.k(s0Var2, o0.f13155d, e4, C(u0Var2, s0Var2, this.f13162k));
                    F(e4);
                    com.facebook.common.references.a.k(null);
                }
            } catch (Throwable th) {
                com.facebook.common.references.a.k(null);
                throw th;
            }
        }

        @r7.h
        private Map<String, String> C(u0 listener, s0 producerContext, com.facebook.imagepipeline.request.d postprocessor) {
            if (listener.f(producerContext, o0.f13155d)) {
                return ImmutableMap.of(o0.f13156e, postprocessor.getName());
            }
            return null;
        }

        private synchronized boolean D() {
            return this.f13163l;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void E() {
            if (A()) {
                r().b();
            }
        }

        private void F(Throwable throwable) {
            if (A()) {
                r().a(throwable);
            }
        }

        private void G(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> newRef, int status) {
            boolean f10 = com.facebook.imagepipeline.producers.b.f(status);
            if ((f10 || D()) && !(f10 && A())) {
                return;
            }
            r().c(newRef, status);
        }

        private com.facebook.common.references.a<com.facebook.imagepipeline.image.c> I(com.facebook.imagepipeline.image.c sourceImage) {
            com.facebook.imagepipeline.image.d dVar = (com.facebook.imagepipeline.image.d) sourceImage;
            com.facebook.common.references.a<Bitmap> c10 = this.f13162k.c(dVar.k(), o0.this.f13158b);
            try {
                com.facebook.imagepipeline.image.d dVar2 = new com.facebook.imagepipeline.image.d(c10, sourceImage.a(), dVar.D(), dVar.A());
                dVar2.i(dVar.getExtras());
                return com.facebook.common.references.a.D(dVar2);
            } finally {
                com.facebook.common.references.a.k(c10);
            }
        }

        private synchronized boolean J() {
            if (this.f13163l || !this.f13166o || this.f13167p || !com.facebook.common.references.a.A(this.f13164m)) {
                return false;
            }
            this.f13167p = true;
            return true;
        }

        private boolean K(com.facebook.imagepipeline.image.c sourceImage) {
            return sourceImage instanceof com.facebook.imagepipeline.image.d;
        }

        private void L() {
            o0.this.f13159c.execute(new RunnableC0108b());
        }

        private void M(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> sourceImageRef, int status) {
            synchronized (this) {
                if (this.f13163l) {
                    return;
                }
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f13164m;
                this.f13164m = com.facebook.common.references.a.h(sourceImageRef);
                this.f13165n = status;
                this.f13166o = true;
                boolean J = J();
                com.facebook.common.references.a.k(aVar);
                if (J) {
                    L();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void z() {
            boolean J;
            synchronized (this) {
                this.f13167p = false;
                J = J();
            }
            if (J) {
                L();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: H */
        public void j(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> newResult, int status) {
            if (!com.facebook.common.references.a.A(newResult)) {
                if (com.facebook.imagepipeline.producers.b.f(status)) {
                    G(null, status);
                    return;
                }
                return;
            }
            M(newResult, status);
        }

        @Override // com.facebook.imagepipeline.producers.p, com.facebook.imagepipeline.producers.b
        protected void h() {
            E();
        }

        @Override // com.facebook.imagepipeline.producers.p, com.facebook.imagepipeline.producers.b
        protected void i(Throwable t9) {
            F(t9);
        }
    }

    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes.dex */
    class c extends p<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> implements com.facebook.imagepipeline.request.f {
        @s7.a("RepeatedPostprocessorConsumer.this")

        /* renamed from: i  reason: collision with root package name */
        private boolean f13172i;
        @r7.h
        @s7.a("RepeatedPostprocessorConsumer.this")

        /* renamed from: j  reason: collision with root package name */
        private com.facebook.common.references.a<com.facebook.imagepipeline.image.c> f13173j;

        /* compiled from: PostprocessorProducer.java */
        /* loaded from: classes.dex */
        class a extends e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ o0 f13175a;

            a(final o0 val$this$0) {
                this.f13175a = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
            public void b() {
                if (c.this.t()) {
                    c.this.r().b();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean t() {
            synchronized (this) {
                if (this.f13172i) {
                    return false;
                }
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f13173j;
                this.f13173j = null;
                this.f13172i = true;
                com.facebook.common.references.a.k(aVar);
                return true;
            }
        }

        private void v(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> sourceImageRef) {
            synchronized (this) {
                if (this.f13172i) {
                    return;
                }
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f13173j;
                this.f13173j = com.facebook.common.references.a.h(sourceImageRef);
                com.facebook.common.references.a.k(aVar);
            }
        }

        private void w() {
            synchronized (this) {
                if (this.f13172i) {
                    return;
                }
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> h4 = com.facebook.common.references.a.h(this.f13173j);
                try {
                    r().c(h4, 0);
                } finally {
                    com.facebook.common.references.a.k(h4);
                }
            }
        }

        @Override // com.facebook.imagepipeline.request.f
        public synchronized void e() {
            w();
        }

        @Override // com.facebook.imagepipeline.producers.p, com.facebook.imagepipeline.producers.b
        protected void h() {
            if (t()) {
                r().b();
            }
        }

        @Override // com.facebook.imagepipeline.producers.p, com.facebook.imagepipeline.producers.b
        protected void i(Throwable throwable) {
            if (t()) {
                r().a(throwable);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: u */
        public void j(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> newResult, int status) {
            if (com.facebook.imagepipeline.producers.b.g(status)) {
                return;
            }
            v(newResult);
            w();
        }

        private c(b postprocessorConsumer, com.facebook.imagepipeline.request.e repeatedPostprocessor, s0 context) {
            super(postprocessorConsumer);
            this.f13172i = false;
            this.f13173j = null;
            repeatedPostprocessor.b(this);
            context.f(new a(o0.this));
        }
    }

    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes.dex */
    class d extends p<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(final com.facebook.common.references.a<com.facebook.imagepipeline.image.c> newResult, int status) {
            if (com.facebook.imagepipeline.producers.b.g(status)) {
                return;
            }
            r().c(newResult, status);
        }

        private d(b postprocessorConsumer) {
            super(postprocessorConsumer);
        }
    }

    public o0(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer, com.facebook.imagepipeline.bitmaps.f platformBitmapFactory, Executor executor) {
        this.f13157a = (q0) com.facebook.common.internal.j.i(inputProducer);
        this.f13158b = platformBitmapFactory;
        this.f13159c = (Executor) com.facebook.common.internal.j.i(executor);
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, s0 context) {
        l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> dVar;
        u0 k10 = context.k();
        com.facebook.imagepipeline.request.d m9 = context.c().m();
        com.facebook.common.internal.j.i(m9);
        b bVar = new b(consumer, k10, m9, context);
        if (m9 instanceof com.facebook.imagepipeline.request.e) {
            dVar = new c(bVar, (com.facebook.imagepipeline.request.e) m9, context);
        } else {
            dVar = new d(bVar);
        }
        this.f13157a.b(dVar, context);
    }
}
