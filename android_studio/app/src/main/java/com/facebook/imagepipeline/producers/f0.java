package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import io.sentry.instrumentation.file.h;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.Executor;

/* compiled from: LocalFileFetchProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class f0 extends e0 {

    /* renamed from: c  reason: collision with root package name */
    public static final String f12957c = "LocalFileFetchProducer";

    public f0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory) {
        super(executor, pooledByteBufferFactory);
    }

    @Override // com.facebook.imagepipeline.producers.e0
    @r7.h
    protected com.facebook.imagepipeline.image.e d(final ImageRequest imageRequest) throws IOException {
        String file = imageRequest.v().toString();
        return e(h.b.d(new FileInputStream(file), file), (int) imageRequest.v().length());
    }

    @Override // com.facebook.imagepipeline.producers.e0
    protected String f() {
        return f12957c;
    }
}
