package com.facebook.imagepipeline.datasource;

import com.facebook.common.internal.j;
import com.facebook.imagepipeline.producers.l;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.imagepipeline.producers.z0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;

/* compiled from: AbstractProducerToDataSourceAdapter.java */
@s7.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class a<T> extends com.facebook.datasource.a<T> implements com.facebook.imagepipeline.request.c {

    /* renamed from: i  reason: collision with root package name */
    private final z0 f12455i;

    /* renamed from: j  reason: collision with root package name */
    private final q1.e f12456j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractProducerToDataSourceAdapter.java */
    /* renamed from: com.facebook.imagepipeline.datasource.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0102a extends com.facebook.imagepipeline.producers.b<T> {
        C0102a() {
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void h() {
            a.this.E();
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void i(Throwable throwable) {
            a.this.F(throwable);
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void j(@r7.h T newResult, int status) {
            a aVar = a.this;
            aVar.G(newResult, status, aVar.f12455i);
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void k(float progress) {
            a.this.s(progress);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(q0<T> producer, z0 settableProducerContext, q1.e requestListener) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractProducerToDataSourceAdapter()");
        }
        this.f12455i = settableProducerContext;
        this.f12456j = requestListener;
        H();
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractProducerToDataSourceAdapter()->onRequestStart");
        }
        requestListener.a(settableProducerContext);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractProducerToDataSourceAdapter()->produceResult");
        }
        producer.b(C(), settableProducerContext);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    private l<T> C() {
        return new C0102a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void E() {
        j.o(isClosed());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(Throwable throwable) {
        if (super.q(throwable, D(this.f12455i))) {
            this.f12456j.i(this.f12455i, throwable);
        }
    }

    private void H() {
        o(this.f12455i.getExtras());
    }

    protected Map<String, Object> D(s0 producerContext) {
        return producerContext.getExtras();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void G(@r7.h T result, int status, s0 producerContext) {
        boolean f10 = com.facebook.imagepipeline.producers.b.f(status);
        if (super.v(result, f10, D(producerContext)) && f10) {
            this.f12456j.e(this.f12455i);
        }
    }

    @Override // com.facebook.imagepipeline.request.c
    public ImageRequest c() {
        return this.f12455i.c();
    }

    @Override // com.facebook.datasource.a, com.facebook.datasource.d
    public boolean close() {
        if (super.close()) {
            if (super.b()) {
                return true;
            }
            this.f12456j.g(this.f12455i);
            this.f12455i.v();
            return true;
        }
        return false;
    }
}
