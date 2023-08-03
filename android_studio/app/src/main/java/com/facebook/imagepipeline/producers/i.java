package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BitmapPrepareProducer.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class i implements q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: e  reason: collision with root package name */
    public static final String f12995e = "BitmapPrepareProducer";

    /* renamed from: a  reason: collision with root package name */
    private final q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12996a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12997b;

    /* renamed from: c  reason: collision with root package name */
    private final int f12998c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f12999d;

    /* compiled from: BitmapPrepareProducer.java */
    /* loaded from: classes.dex */
    private static class a extends p<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: i  reason: collision with root package name */
        private final int f13000i;

        /* renamed from: j  reason: collision with root package name */
        private final int f13001j;

        a(l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, int minBitmapSizeBytes, int maxBitmapSizeBytes) {
            super(consumer);
            this.f13000i = minBitmapSizeBytes;
            this.f13001j = maxBitmapSizeBytes;
        }

        private void s(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> newResult) {
            com.facebook.imagepipeline.image.c q9;
            Bitmap k10;
            int rowBytes;
            if (newResult == null || !newResult.y() || (q9 = newResult.q()) == null || q9.isClosed() || !(q9 instanceof com.facebook.imagepipeline.image.d) || (k10 = ((com.facebook.imagepipeline.image.d) q9).k()) == null || (rowBytes = k10.getRowBytes() * k10.getHeight()) < this.f13000i || rowBytes > this.f13001j) {
                return;
            }
            k10.prepareToDraw();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: t */
        public void j(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> newResult, int status) {
            s(newResult);
            r().c(newResult, status);
        }
    }

    public i(final q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer, int minBitmapSizeBytes, int maxBitmapSizeBytes, boolean preparePrefetch) {
        com.facebook.common.internal.j.d(Boolean.valueOf(minBitmapSizeBytes <= maxBitmapSizeBytes));
        this.f12996a = (q0) com.facebook.common.internal.j.i(inputProducer);
        this.f12997b = minBitmapSizeBytes;
        this.f12998c = maxBitmapSizeBytes;
        this.f12999d = preparePrefetch;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final s0 producerContext) {
        if (producerContext.q() && !this.f12999d) {
            this.f12996a.b(consumer, producerContext);
        } else {
            this.f12996a.b(new a(consumer, this.f12997b, this.f12998c), producerContext);
        }
    }
}
