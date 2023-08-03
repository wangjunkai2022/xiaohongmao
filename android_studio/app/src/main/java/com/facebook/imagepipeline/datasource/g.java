package com.facebook.imagepipeline.datasource;

import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.z0;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ProducerToDataSourceAdapter.java */
@s7.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class g<T> extends a<T> {
    private g(q0<T> producer, z0 settableProducerContext, q1.e listener) {
        super(producer, settableProducerContext, listener);
    }

    public static <T> com.facebook.datasource.d<T> I(q0<T> producer, z0 settableProducerContext, q1.e listener) {
        return new g(producer, settableProducerContext, listener);
    }
}
