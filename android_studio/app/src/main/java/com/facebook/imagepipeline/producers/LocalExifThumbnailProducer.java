package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Executor;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class LocalExifThumbnailProducer implements h1<com.facebook.imagepipeline.image.e> {

    /* renamed from: d  reason: collision with root package name */
    private static final int f12830d = 512;

    /* renamed from: e  reason: collision with root package name */
    public static final String f12831e = "LocalExifThumbnailProducer";
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    static final String f12832f = "createdThumbnail";

    /* renamed from: a  reason: collision with root package name */
    private final Executor f12833a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.g f12834b;

    /* renamed from: c  reason: collision with root package name */
    private final ContentResolver f12835c;

    /* JADX INFO: Access modifiers changed from: private */
    @com.facebook.soloader.d
    /* loaded from: classes.dex */
    public class Api24Utils {
        private Api24Utils() {
        }

        @r7.h
        ExifInterface a(FileDescriptor fileDescriptor) throws IOException {
            if (Build.VERSION.SDK_INT >= 24) {
                return new ExifInterface(fileDescriptor);
            }
            return null;
        }

        /* synthetic */ Api24Utils(LocalExifThumbnailProducer localExifThumbnailProducer, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends a1<com.facebook.imagepipeline.image.e> {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ ImageRequest f12837k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l consumer, u0 producerListener, s0 producerContext, String producerName, final ImageRequest val$imageRequest) {
            super(consumer, producerListener, producerContext, producerName);
            this.f12837k = val$imageRequest;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        /* renamed from: j */
        public void b(@r7.h com.facebook.imagepipeline.image.e result) {
            com.facebook.imagepipeline.image.e.d(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1
        /* renamed from: k */
        public Map<String, String> i(@r7.h final com.facebook.imagepipeline.image.e result) {
            return ImmutableMap.of(LocalExifThumbnailProducer.f12832f, Boolean.toString(result != null));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        @r7.h
        /* renamed from: l */
        public com.facebook.imagepipeline.image.e c() throws Exception {
            ExifInterface g4 = LocalExifThumbnailProducer.this.g(this.f12837k.w());
            if (g4 == null || !g4.hasThumbnail()) {
                return null;
            }
            return LocalExifThumbnailProducer.this.e(LocalExifThumbnailProducer.this.f12834b.d((byte[]) com.facebook.common.internal.j.i(g4.getThumbnail())), g4);
        }
    }

    /* loaded from: classes.dex */
    class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a1 f12839a;

        b(final a1 val$cancellableProducerRunnable) {
            this.f12839a = val$cancellableProducerRunnable;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
        public void b() {
            this.f12839a.a();
        }
    }

    public LocalExifThumbnailProducer(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, ContentResolver contentResolver) {
        this.f12833a = executor;
        this.f12834b = pooledByteBufferFactory;
        this.f12835c = contentResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.facebook.imagepipeline.image.e e(PooledByteBuffer imageBytes, ExifInterface exifInterface) {
        Pair<Integer, Integer> b10 = com.facebook.imageutils.a.b(new com.facebook.common.memory.h(imageBytes));
        int h4 = h(exifInterface);
        int intValue = b10 != null ? ((Integer) b10.first).intValue() : -1;
        int intValue2 = b10 != null ? ((Integer) b10.second).intValue() : -1;
        com.facebook.common.references.a D = com.facebook.common.references.a.D(imageBytes);
        try {
            com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(D);
            com.facebook.common.references.a.k(D);
            eVar.q0(com.facebook.imageformat.b.f11797a);
            eVar.r0(h4);
            eVar.v0(intValue);
            eVar.p0(intValue2);
            return eVar;
        } catch (Throwable th) {
            com.facebook.common.references.a.k(D);
            throw th;
        }
    }

    private int h(final ExifInterface exifInterface) {
        return com.facebook.imageutils.c.a(Integer.parseInt((String) com.facebook.common.internal.j.i(exifInterface.getAttribute(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION))));
    }

    @Override // com.facebook.imagepipeline.producers.h1
    public boolean a(@r7.h com.facebook.imagepipeline.common.d resizeOptions) {
        return i1.b(512, 512, resizeOptions);
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext) {
        u0 k10 = producerContext.k();
        ImageRequest c10 = producerContext.c();
        producerContext.h(com.google.android.gms.common.internal.q.f29166b, "exif");
        a aVar = new a(consumer, k10, producerContext, f12831e, c10);
        producerContext.f(new b(aVar));
        this.f12833a.execute(aVar);
    }

    @VisibleForTesting
    boolean f(String realPath) throws IOException {
        if (realPath == null) {
            return false;
        }
        File file = new File(realPath);
        return file.exists() && file.canRead();
    }

    @r7.h
    @VisibleForTesting
    ExifInterface g(Uri uri) {
        String b10 = com.facebook.common.util.f.b(this.f12835c, uri);
        if (b10 == null) {
            return null;
        }
        try {
        } catch (IOException unused) {
        } catch (StackOverflowError unused2) {
            p0.a.q(LocalExifThumbnailProducer.class, "StackOverflowError in ExifInterface constructor");
        }
        if (f(b10)) {
            return new ExifInterface(b10);
        }
        AssetFileDescriptor a10 = com.facebook.common.util.f.a(this.f12835c, uri);
        if (a10 != null && Build.VERSION.SDK_INT >= 24) {
            ExifInterface a11 = new Api24Utils(this, null).a(a10.getFileDescriptor());
            a10.close();
            return a11;
        }
        return null;
    }
}
