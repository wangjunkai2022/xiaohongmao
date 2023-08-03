package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public interface ImageHeaderParser {

    /* renamed from: a  reason: collision with root package name */
    public static final int f8511a = -1;

    /* loaded from: classes.dex */
    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        ANIMATED_WEBP(true),
        AVIF(true),
        UNKNOWN(false);
        

        /* renamed from: a  reason: collision with root package name */
        private final boolean f8512a;

        ImageType(boolean z9) {
            this.f8512a = z9;
        }

        public boolean hasAlpha() {
            return this.f8512a;
        }

        public boolean isWebp() {
            int i4 = a.f8513a[ordinal()];
            return i4 == 1 || i4 == 2 || i4 == 3;
        }
    }

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8513a;

        static {
            int[] iArr = new int[ImageType.values().length];
            f8513a = iArr;
            try {
                iArr[ImageType.WEBP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8513a[ImageType.WEBP_A.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8513a[ImageType.ANIMATED_WEBP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @NonNull
    ImageType a(@NonNull ByteBuffer byteBuffer) throws IOException;

    int b(@NonNull ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException;

    @NonNull
    ImageType c(@NonNull InputStream inputStream) throws IOException;

    int d(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException;
}
