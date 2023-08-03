package com.bumptech.glide.load.resource.drawable;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.util.o;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: AnimatedWebpDecoder.java */
@RequiresApi(28)
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final List<ImageHeaderParser> f9336a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f9337b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatedWebpDecoder.java */
    /* renamed from: com.bumptech.glide.load.resource.drawable.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0061a implements u<Drawable> {

        /* renamed from: b  reason: collision with root package name */
        private static final int f9338b = 2;

        /* renamed from: a  reason: collision with root package name */
        private final AnimatedImageDrawable f9339a;

        C0061a(AnimatedImageDrawable animatedImageDrawable) {
            this.f9339a = animatedImageDrawable;
        }

        @Override // com.bumptech.glide.load.engine.u
        @NonNull
        public Class<Drawable> a() {
            return Drawable.class;
        }

        @Override // com.bumptech.glide.load.engine.u
        @NonNull
        /* renamed from: b */
        public AnimatedImageDrawable get() {
            return this.f9339a;
        }

        @Override // com.bumptech.glide.load.engine.u
        public int getSize() {
            return this.f9339a.getIntrinsicWidth() * this.f9339a.getIntrinsicHeight() * o.i(Bitmap.Config.ARGB_8888) * 2;
        }

        @Override // com.bumptech.glide.load.engine.u
        public void recycle() {
            this.f9339a.stop();
            this.f9339a.clearAnimationCallbacks();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatedWebpDecoder.java */
    /* loaded from: classes.dex */
    public static final class b implements com.bumptech.glide.load.g<ByteBuffer, Drawable> {

        /* renamed from: a  reason: collision with root package name */
        private final a f9340a;

        b(a aVar) {
            this.f9340a = aVar;
        }

        @Override // com.bumptech.glide.load.g
        /* renamed from: c */
        public u<Drawable> b(@NonNull ByteBuffer byteBuffer, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
            return this.f9340a.b(ImageDecoder.createSource(byteBuffer), i4, i10, fVar);
        }

        @Override // com.bumptech.glide.load.g
        /* renamed from: d */
        public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
            return this.f9340a.d(byteBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatedWebpDecoder.java */
    /* loaded from: classes.dex */
    public static final class c implements com.bumptech.glide.load.g<InputStream, Drawable> {

        /* renamed from: a  reason: collision with root package name */
        private final a f9341a;

        c(a aVar) {
            this.f9341a = aVar;
        }

        @Override // com.bumptech.glide.load.g
        /* renamed from: c */
        public u<Drawable> b(@NonNull InputStream inputStream, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
            return this.f9341a.b(ImageDecoder.createSource(com.bumptech.glide.util.a.b(inputStream)), i4, i10, fVar);
        }

        @Override // com.bumptech.glide.load.g
        /* renamed from: d */
        public boolean a(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
            return this.f9341a.c(inputStream);
        }
    }

    private a(List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.f9336a = list;
        this.f9337b = bVar;
    }

    public static com.bumptech.glide.load.g<ByteBuffer, Drawable> a(List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        return new b(new a(list, bVar));
    }

    private boolean e(ImageHeaderParser.ImageType imageType) {
        return imageType == ImageHeaderParser.ImageType.ANIMATED_WEBP;
    }

    public static com.bumptech.glide.load.g<InputStream, Drawable> f(List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        return new c(new a(list, bVar));
    }

    u<Drawable> b(@NonNull ImageDecoder.Source source, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        Drawable decodeDrawable = ImageDecoder.decodeDrawable(source, new com.bumptech.glide.load.resource.a(i4, i10, fVar));
        if (decodeDrawable instanceof AnimatedImageDrawable) {
            return new C0061a((AnimatedImageDrawable) decodeDrawable);
        }
        throw new IOException("Received unexpected drawable type for animated webp, failing: " + decodeDrawable);
    }

    boolean c(InputStream inputStream) throws IOException {
        return e(com.bumptech.glide.load.b.f(this.f9336a, inputStream, this.f9337b));
    }

    boolean d(ByteBuffer byteBuffer) throws IOException {
        return e(com.bumptech.glide.load.b.g(this.f9336a, byteBuffer));
    }
}
