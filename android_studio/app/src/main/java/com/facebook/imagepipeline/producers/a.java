package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: AddImageTransformMetaDataProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a implements q0<com.facebook.imagepipeline.image.e> {

    /* renamed from: a  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f12878a;

    /* compiled from: AddImageTransformMetaDataProducer.java */
    /* loaded from: classes.dex */
    private static class b extends p<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(@r7.h com.facebook.imagepipeline.image.e newResult, int status) {
            if (newResult == null) {
                r().c(null, status);
                return;
            }
            if (!com.facebook.imagepipeline.image.e.W(newResult)) {
                newResult.d0();
            }
            r().c(newResult, status);
        }

        private b(l<com.facebook.imagepipeline.image.e> consumer) {
            super(consumer);
        }
    }

    public a(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f12878a = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(l<com.facebook.imagepipeline.image.e> consumer, s0 context) {
        this.f12878a.b(new b(consumer), context);
    }
}
