package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: SwallowResultProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class b1<T> implements q0<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final q0<T> f12906a;

    /* compiled from: SwallowResultProducer.java */
    /* loaded from: classes.dex */
    class a extends p<T, Void> {
        a(l consumer) {
            super(consumer);
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void j(@r7.h T newResult, int status) {
            if (b.f(status)) {
                r().c(null, status);
            }
        }
    }

    public b1(q0<T> inputProducer) {
        this.f12906a = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(l<Void> consumer, s0 producerContext) {
        this.f12906a.b(new a(consumer), producerContext);
    }
}
