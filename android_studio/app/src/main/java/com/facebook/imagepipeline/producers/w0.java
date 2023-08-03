package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;

/* compiled from: QualifiedResourceFetchProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class w0 extends e0 {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13262d = "QualifiedResourceFetchProducer";

    /* renamed from: c  reason: collision with root package name */
    private final ContentResolver f13263c;

    public w0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, ContentResolver contentResolver) {
        super(executor, pooledByteBufferFactory);
        this.f13263c = contentResolver;
    }

    @Override // com.facebook.imagepipeline.producers.e0
    @r7.h
    protected com.facebook.imagepipeline.image.e d(final ImageRequest imageRequest) throws IOException {
        InputStream openInputStream = this.f13263c.openInputStream(imageRequest.w());
        com.facebook.common.internal.j.j(openInputStream, "ContentResolver returned null InputStream");
        return e(openInputStream, -1);
    }

    @Override // com.facebook.imagepipeline.producers.e0
    protected String f() {
        return f13262d;
    }
}
