package com.facebook.imagepipeline.producers;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: RemoveImageTransformMetaDataProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class x0 implements q0<com.facebook.common.references.a<PooledByteBuffer>> {

    /* renamed from: a  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f13287a;

    /* compiled from: RemoveImageTransformMetaDataProducer.java */
    /* loaded from: classes.dex */
    private class b extends p<com.facebook.imagepipeline.image.e, com.facebook.common.references.a<PooledByteBuffer>> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(@r7.h com.facebook.imagepipeline.image.e newResult, int status) {
            try {
                r0 = com.facebook.imagepipeline.image.e.b0(newResult) ? newResult.i() : null;
                r().c(r0, status);
            } finally {
                com.facebook.common.references.a.k(r0);
            }
        }

        private b(l<com.facebook.common.references.a<PooledByteBuffer>> consumer) {
            super(consumer);
        }
    }

    public x0(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f13287a = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(l<com.facebook.common.references.a<PooledByteBuffer>> consumer, s0 context) {
        this.f13287a.b(new b(consumer), context);
    }
}
