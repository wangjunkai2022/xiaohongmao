package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: VideoDecoder.java */
/* loaded from: classes.dex */
public class h0<T> implements com.bumptech.glide.load.g<T, Bitmap> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f9238d = "VideoDecoder";

    /* renamed from: e  reason: collision with root package name */
    public static final long f9239e = -1;
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    static final int f9240f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<Long> f9241g = com.bumptech.glide.load.e.b("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new a());

    /* renamed from: h  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<Integer> f9242h = com.bumptech.glide.load.e.b("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new b());

    /* renamed from: i  reason: collision with root package name */
    private static final e f9243i = new e();

    /* renamed from: a  reason: collision with root package name */
    private final f<T> f9244a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f9245b;

    /* renamed from: c  reason: collision with root package name */
    private final e f9246c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public class a implements e.b<Long> {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f9247a = ByteBuffer.allocate(8);

        a() {
        }

        @Override // com.bumptech.glide.load.e.b
        /* renamed from: b */
        public void a(@NonNull byte[] bArr, @NonNull Long l10, @NonNull MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f9247a) {
                this.f9247a.position(0);
                messageDigest.update(this.f9247a.putLong(l10.longValue()).array());
            }
        }
    }

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    class b implements e.b<Integer> {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f9248a = ByteBuffer.allocate(4);

        b() {
        }

        @Override // com.bumptech.glide.load.e.b
        /* renamed from: b */
        public void a(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f9248a) {
                this.f9248a.position(0);
                messageDigest.update(this.f9248a.putInt(num.intValue()).array());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public static final class c implements f<AssetFileDescriptor> {
        private c() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.h0.f
        /* renamed from: b */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoDecoder.java */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static final class d implements f<ByteBuffer> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: VideoDecoder.java */
        /* loaded from: classes.dex */
        public class a extends MediaDataSource {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ByteBuffer f9249a;

            a(ByteBuffer byteBuffer) {
                this.f9249a = byteBuffer;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // android.media.MediaDataSource
            public long getSize() {
                return this.f9249a.limit();
            }

            @Override // android.media.MediaDataSource
            public int readAt(long j4, byte[] bArr, int i4, int i10) {
                if (j4 >= this.f9249a.limit()) {
                    return -1;
                }
                this.f9249a.position((int) j4);
                int min = Math.min(i10, this.f9249a.remaining());
                this.f9249a.get(bArr, i4, min);
                return min;
            }
        }

        d() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.h0.f
        /* renamed from: b */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            mediaMetadataRetriever.setDataSource(new a(byteBuffer));
        }
    }

    /* compiled from: VideoDecoder.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static class e {
        e() {
        }

        public MediaMetadataRetriever a() {
            return new MediaMetadataRetriever();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoDecoder.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface f<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public static final class g implements f<ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.resource.bitmap.h0.f
        /* renamed from: b */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public static final class h extends RuntimeException {

        /* renamed from: a  reason: collision with root package name */
        private static final long f9251a = -2556382523004027815L;

        h() {
            super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, f<T> fVar) {
        this(eVar, fVar, f9243i);
    }

    public static com.bumptech.glide.load.g<AssetFileDescriptor, Bitmap> c(com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        return new h0(eVar, new c(null));
    }

    @RequiresApi(api = 23)
    public static com.bumptech.glide.load.g<ByteBuffer, Bitmap> d(com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        return new h0(eVar, new d());
    }

    @Nullable
    private static Bitmap e(MediaMetadataRetriever mediaMetadataRetriever, long j4, int i4, int i10, int i11, DownsampleStrategy downsampleStrategy) {
        Bitmap g4 = (Build.VERSION.SDK_INT < 27 || i10 == Integer.MIN_VALUE || i11 == Integer.MIN_VALUE || downsampleStrategy == DownsampleStrategy.f9193f) ? null : g(mediaMetadataRetriever, j4, i4, i10, i11, downsampleStrategy);
        if (g4 == null) {
            g4 = f(mediaMetadataRetriever, j4, i4);
        }
        if (g4 != null) {
            return g4;
        }
        throw new h();
    }

    private static Bitmap f(MediaMetadataRetriever mediaMetadataRetriever, long j4, int i4) {
        return mediaMetadataRetriever.getFrameAtTime(j4, i4);
    }

    @Nullable
    @TargetApi(27)
    private static Bitmap g(MediaMetadataRetriever mediaMetadataRetriever, long j4, int i4, int i10, int i11, DownsampleStrategy downsampleStrategy) {
        try {
            int parseInt = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int parseInt2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int parseInt3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (parseInt3 == 90 || parseInt3 == 270) {
                parseInt2 = parseInt;
                parseInt = parseInt2;
            }
            float b10 = downsampleStrategy.b(parseInt, parseInt2, i10, i11);
            return mediaMetadataRetriever.getScaledFrameAtTime(j4, i4, Math.round(parseInt * b10), Math.round(b10 * parseInt2));
        } catch (Throwable th) {
            if (Log.isLoggable(f9238d, 3)) {
                Log.d(f9238d, "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame", th);
                return null;
            }
            return null;
        }
    }

    public static com.bumptech.glide.load.g<ParcelFileDescriptor, Bitmap> h(com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        return new h0(eVar, new g());
    }

    @Override // com.bumptech.glide.load.g
    public boolean a(@NonNull T t9, @NonNull com.bumptech.glide.load.f fVar) {
        return true;
    }

    @Override // com.bumptech.glide.load.g
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull T t9, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        long longValue = ((Long) fVar.c(f9241g)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
        Integer num = (Integer) fVar.c(f9242h);
        if (num == null) {
            num = 2;
        }
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) fVar.c(DownsampleStrategy.f9195h);
        if (downsampleStrategy == null) {
            downsampleStrategy = DownsampleStrategy.f9194g;
        }
        DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
        MediaMetadataRetriever a10 = this.f9246c.a();
        try {
            this.f9244a.a(a10, t9);
            return com.bumptech.glide.load.resource.bitmap.g.c(e(a10, longValue, num.intValue(), i4, i10, downsampleStrategy2), this.f9245b);
        } finally {
            if (Build.VERSION.SDK_INT >= 29) {
                a10.close();
            } else {
                a10.release();
            }
        }
    }

    @VisibleForTesting
    h0(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, f<T> fVar, e eVar2) {
        this.f9245b = eVar;
        this.f9244a = fVar;
        this.f9246c = eVar2;
    }
}
