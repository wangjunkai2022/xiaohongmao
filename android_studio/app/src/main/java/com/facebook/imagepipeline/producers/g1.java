package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ThumbnailBranchProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class g1 implements q0<com.facebook.imagepipeline.image.e> {

    /* renamed from: a  reason: collision with root package name */
    private final h1<com.facebook.imagepipeline.image.e>[] f12970a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThumbnailBranchProducer.java */
    /* loaded from: classes.dex */
    public class a extends p<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private final s0 f12971i;

        /* renamed from: j  reason: collision with root package name */
        private final int f12972j;
        @r7.h

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.imagepipeline.common.d f12973k;

        public a(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext, int producerIndex) {
            super(consumer);
            this.f12971i = producerContext;
            this.f12972j = producerIndex;
            this.f12973k = producerContext.c().s();
        }

        @Override // com.facebook.imagepipeline.producers.p, com.facebook.imagepipeline.producers.b
        protected void i(Throwable t9) {
            if (g1.this.e(this.f12972j + 1, r(), this.f12971i)) {
                return;
            }
            r().a(t9);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(@r7.h com.facebook.imagepipeline.image.e newResult, int status) {
            if (newResult != null && (b.g(status) || i1.c(newResult, this.f12973k))) {
                r().c(newResult, status);
            } else if (b.f(status)) {
                com.facebook.imagepipeline.image.e.d(newResult);
                if (g1.this.e(this.f12972j + 1, r(), this.f12971i)) {
                    return;
                }
                r().c(null, 1);
            }
        }
    }

    public g1(h1<com.facebook.imagepipeline.image.e>... thumbnailProducers) {
        h1<com.facebook.imagepipeline.image.e>[] h1VarArr = (h1[]) com.facebook.common.internal.j.i(thumbnailProducers);
        this.f12970a = h1VarArr;
        com.facebook.common.internal.j.g(0, h1VarArr.length);
    }

    private int d(int startIndex, @r7.h com.facebook.imagepipeline.common.d resizeOptions) {
        while (true) {
            h1<com.facebook.imagepipeline.image.e>[] h1VarArr = this.f12970a;
            if (startIndex >= h1VarArr.length) {
                return -1;
            }
            if (h1VarArr[startIndex].a(resizeOptions)) {
                return startIndex;
            }
            startIndex++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(int startIndex, l<com.facebook.imagepipeline.image.e> consumer, s0 context) {
        int d4 = d(startIndex, context.c().s());
        if (d4 == -1) {
            return false;
        }
        this.f12970a[d4].b(new a(consumer, context, d4), context);
        return true;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 context) {
        if (context.c().s() == null) {
            consumer.c(null, 1);
        } else if (e(0, consumer, context)) {
        } else {
            consumer.c(null, 1);
        }
    }
}
