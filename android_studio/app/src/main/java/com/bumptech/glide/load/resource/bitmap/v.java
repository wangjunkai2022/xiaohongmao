package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: ImageReader.java */
/* loaded from: classes.dex */
interface v {

    /* compiled from: ImageReader.java */
    /* loaded from: classes.dex */
    public static final class a implements v {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f9308a;

        /* renamed from: b  reason: collision with root package name */
        private final List<ImageHeaderParser> f9309b;

        /* renamed from: c  reason: collision with root package name */
        private final com.bumptech.glide.load.engine.bitmap_recycle.b f9310c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(byte[] bArr, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.f9308a = bArr;
            this.f9309b = list;
            this.f9310c = bVar;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        @Nullable
        public Bitmap a(BitmapFactory.Options options) {
            byte[] bArr = this.f9308a;
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public void b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public int c() throws IOException {
            return com.bumptech.glide.load.b.c(this.f9309b, ByteBuffer.wrap(this.f9308a), this.f9310c);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.b.g(this.f9309b, ByteBuffer.wrap(this.f9308a));
        }
    }

    /* compiled from: ImageReader.java */
    /* loaded from: classes.dex */
    public static final class b implements v {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f9311a;

        /* renamed from: b  reason: collision with root package name */
        private final List<ImageHeaderParser> f9312b;

        /* renamed from: c  reason: collision with root package name */
        private final com.bumptech.glide.load.engine.bitmap_recycle.b f9313c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(ByteBuffer byteBuffer, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.f9311a = byteBuffer;
            this.f9312b = list;
            this.f9313c = bVar;
        }

        private InputStream e() {
            return com.bumptech.glide.util.a.g(com.bumptech.glide.util.a.d(this.f9311a));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        @Nullable
        public Bitmap a(BitmapFactory.Options options) {
            return BitmapFactory.decodeStream(e(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public void b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public int c() throws IOException {
            return com.bumptech.glide.load.b.c(this.f9312b, com.bumptech.glide.util.a.d(this.f9311a), this.f9313c);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.b.g(this.f9312b, com.bumptech.glide.util.a.d(this.f9311a));
        }
    }

    /* compiled from: ImageReader.java */
    /* loaded from: classes.dex */
    public static final class c implements v {

        /* renamed from: a  reason: collision with root package name */
        private final File f9314a;

        /* renamed from: b  reason: collision with root package name */
        private final List<ImageHeaderParser> f9315b;

        /* renamed from: c  reason: collision with root package name */
        private final com.bumptech.glide.load.engine.bitmap_recycle.b f9316c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(File file, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.f9314a = file;
            this.f9315b = list;
            this.f9316c = bVar;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        @Nullable
        public Bitmap a(BitmapFactory.Options options) throws FileNotFoundException {
            z zVar;
            z zVar2 = null;
            try {
                File file = this.f9314a;
                zVar = new z(h.b.a(new FileInputStream(file), file), this.f9316c);
            } catch (Throwable th) {
                th = th;
            }
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(zVar, null, options);
                try {
                    zVar.close();
                } catch (IOException unused) {
                }
                return decodeStream;
            } catch (Throwable th2) {
                th = th2;
                zVar2 = zVar;
                if (zVar2 != null) {
                    try {
                        zVar2.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public void b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public int c() throws IOException {
            z zVar;
            Throwable th;
            try {
                File file = this.f9314a;
                zVar = new z(h.b.a(new FileInputStream(file), file), this.f9316c);
                try {
                    int b10 = com.bumptech.glide.load.b.b(this.f9315b, zVar, this.f9316c);
                    try {
                        zVar.close();
                    } catch (IOException unused) {
                    }
                    return b10;
                } catch (Throwable th2) {
                    th = th2;
                    if (zVar != null) {
                        try {
                            zVar.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                zVar = null;
                th = th3;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public ImageHeaderParser.ImageType d() throws IOException {
            z zVar;
            Throwable th;
            try {
                File file = this.f9314a;
                zVar = new z(h.b.a(new FileInputStream(file), file), this.f9316c);
                try {
                    ImageHeaderParser.ImageType f10 = com.bumptech.glide.load.b.f(this.f9315b, zVar, this.f9316c);
                    try {
                        zVar.close();
                    } catch (IOException unused) {
                    }
                    return f10;
                } catch (Throwable th2) {
                    th = th2;
                    if (zVar != null) {
                        try {
                            zVar.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                zVar = null;
                th = th3;
            }
        }
    }

    /* compiled from: ImageReader.java */
    /* loaded from: classes.dex */
    public static final class d implements v {

        /* renamed from: a  reason: collision with root package name */
        private final com.bumptech.glide.load.data.k f9317a;

        /* renamed from: b  reason: collision with root package name */
        private final com.bumptech.glide.load.engine.bitmap_recycle.b f9318b;

        /* renamed from: c  reason: collision with root package name */
        private final List<ImageHeaderParser> f9319c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(InputStream inputStream, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.f9318b = (com.bumptech.glide.load.engine.bitmap_recycle.b) com.bumptech.glide.util.m.d(bVar);
            this.f9319c = (List) com.bumptech.glide.util.m.d(list);
            this.f9317a = new com.bumptech.glide.load.data.k(inputStream, bVar);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        @Nullable
        public Bitmap a(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeStream(this.f9317a.a(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public void b() {
            this.f9317a.c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public int c() throws IOException {
            return com.bumptech.glide.load.b.b(this.f9319c, this.f9317a.a(), this.f9318b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.b.f(this.f9319c, this.f9317a.a(), this.f9318b);
        }
    }

    /* compiled from: ImageReader.java */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static final class e implements v {

        /* renamed from: a  reason: collision with root package name */
        private final com.bumptech.glide.load.engine.bitmap_recycle.b f9320a;

        /* renamed from: b  reason: collision with root package name */
        private final List<ImageHeaderParser> f9321b;

        /* renamed from: c  reason: collision with root package name */
        private final ParcelFileDescriptorRewinder f9322c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.f9320a = (com.bumptech.glide.load.engine.bitmap_recycle.b) com.bumptech.glide.util.m.d(bVar);
            this.f9321b = (List) com.bumptech.glide.util.m.d(list);
            this.f9322c = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        @Nullable
        public Bitmap a(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeFileDescriptor(this.f9322c.a().getFileDescriptor(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public void b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public int c() throws IOException {
            return com.bumptech.glide.load.b.a(this.f9321b, this.f9322c, this.f9320a);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.b.e(this.f9321b, this.f9322c, this.f9320a);
        }
    }

    @Nullable
    Bitmap a(BitmapFactory.Options options) throws IOException;

    void b();

    int c() throws IOException;

    ImageHeaderParser.ImageType d() throws IOException;
}
