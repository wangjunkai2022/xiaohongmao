package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BranchOnSeparateImagesProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class k implements q0<com.facebook.imagepipeline.image.e> {

    /* renamed from: a  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f13057a;

    /* renamed from: b  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f13058b;

    /* compiled from: BranchOnSeparateImagesProducer.java */
    /* loaded from: classes.dex */
    private class b extends p<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private s0 f13059i;

        @Override // com.facebook.imagepipeline.producers.p, com.facebook.imagepipeline.producers.b
        protected void i(@r7.h Throwable t9) {
            k.this.f13058b.b(r(), this.f13059i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(@r7.h com.facebook.imagepipeline.image.e newResult, int status) {
            ImageRequest c10 = this.f13059i.c();
            boolean f10 = com.facebook.imagepipeline.producers.b.f(status);
            boolean c11 = i1.c(newResult, c10.s());
            if (newResult != null && (c11 || c10.k())) {
                if (f10 && c11) {
                    r().c(newResult, status);
                } else {
                    r().c(newResult, com.facebook.imagepipeline.producers.b.p(status, 1));
                }
            }
            if (!f10 || c11 || c10.j()) {
                return;
            }
            com.facebook.imagepipeline.image.e.d(newResult);
            k.this.f13058b.b(r(), this.f13059i);
        }

        private b(l<com.facebook.imagepipeline.image.e> consumer, s0 producerContext) {
            super(consumer);
            this.f13059i = producerContext;
        }
    }

    public k(q0<com.facebook.imagepipeline.image.e> inputProducer1, q0<com.facebook.imagepipeline.image.e> inputProducer2) {
        this.f13057a = inputProducer1;
        this.f13058b = inputProducer2;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(l<com.facebook.imagepipeline.image.e> consumer, s0 context) {
        this.f13057a.b(new b(consumer, context), context);
    }
}
