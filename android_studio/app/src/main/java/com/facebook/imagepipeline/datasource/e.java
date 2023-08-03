package com.facebook.imagepipeline.datasource;

import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.imagepipeline.producers.z0;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: CloseableProducerToDataSourceAdapter.java */
@s7.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e<T> extends a<com.facebook.common.references.a<T>> {
    private e(q0<com.facebook.common.references.a<T>> producer, z0 settableProducerContext, q1.e listener) {
        super(producer, settableProducerContext, listener);
    }

    public static <T> com.facebook.datasource.d<com.facebook.common.references.a<T>> J(q0<com.facebook.common.references.a<T>> producer, z0 settableProducerContext, q1.e listener) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("CloseableProducerToDataSourceAdapter#create");
        }
        e eVar = new e(producer, settableProducerContext, listener);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.datasource.a
    /* renamed from: I */
    public void i(com.facebook.common.references.a<T> result) {
        com.facebook.common.references.a.k(result);
    }

    @Override // com.facebook.datasource.a, com.facebook.datasource.d
    @r7.h
    /* renamed from: K */
    public com.facebook.common.references.a<T> a() {
        return com.facebook.common.references.a.h((com.facebook.common.references.a) super.a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.datasource.a
    /* renamed from: L */
    public void G(com.facebook.common.references.a<T> result, int status, s0 producerContext) {
        super.G(com.facebook.common.references.a.h(result), status, producerContext);
    }
}
