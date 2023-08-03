package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.producers.w;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* compiled from: NetworkFetcher.java */
/* loaded from: classes.dex */
public interface l0<FETCH_STATE extends w> {

    /* compiled from: NetworkFetcher.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(Throwable throwable);

        void b();

        void c(InputStream response, int responseLength) throws IOException;
    }

    void a(FETCH_STATE fetchState, a callback);

    void b(FETCH_STATE fetchState, int byteSize);

    boolean c(FETCH_STATE fetchState);

    @r7.h
    Map<String, String> d(FETCH_STATE fetchState, int byteSize);

    FETCH_STATE e(l<com.facebook.imagepipeline.image.e> consumer, s0 producerContext);
}
