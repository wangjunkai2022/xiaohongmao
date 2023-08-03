package com.facebook.imagepipeline.producers;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.util.concurrent.Executor;

/* compiled from: LocalResourceFetchProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class g0 extends e0 {

    /* renamed from: d  reason: collision with root package name */
    public static final String f12968d = "LocalResourceFetchProducer";

    /* renamed from: c  reason: collision with root package name */
    private final Resources f12969c;

    public g0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, Resources resources) {
        super(executor, pooledByteBufferFactory);
        this.f12969c = resources;
    }

    private int g(ImageRequest imageRequest) {
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            assetFileDescriptor = this.f12969c.openRawResourceFd(h(imageRequest));
            int length = (int) assetFileDescriptor.getLength();
            try {
                assetFileDescriptor.close();
            } catch (IOException unused) {
            }
            return length;
        } catch (Resources.NotFoundException unused2) {
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException unused3) {
                }
            }
            return -1;
        } catch (Throwable th) {
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    private static int h(ImageRequest imageRequest) {
        String path = imageRequest.w().getPath();
        com.facebook.common.internal.j.i(path);
        return Integer.parseInt(path.substring(1));
    }

    @Override // com.facebook.imagepipeline.producers.e0
    @r7.h
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        return e(this.f12969c.openRawResource(h(imageRequest)), g(imageRequest));
    }

    @Override // com.facebook.imagepipeline.producers.e0
    protected String f() {
        return f12968d;
    }
}
