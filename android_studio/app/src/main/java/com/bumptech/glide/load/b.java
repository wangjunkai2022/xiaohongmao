package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.resource.bitmap.z;
import io.sentry.instrumentation.file.h;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: ImageHeaderParserUtils.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int f8515a = 5242880;

    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    class a implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InputStream f8516a;

        a(InputStream inputStream) {
            this.f8516a = inputStream;
        }

        @Override // com.bumptech.glide.load.b.h
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.c(this.f8516a);
            } finally {
                this.f8516a.reset();
            }
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* renamed from: com.bumptech.glide.load.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0045b implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ByteBuffer f8517a;

        C0045b(ByteBuffer byteBuffer) {
            this.f8517a = byteBuffer;
        }

        @Override // com.bumptech.glide.load.b.h
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            return imageHeaderParser.a(this.f8517a);
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    class c implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ParcelFileDescriptorRewinder f8518a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.bumptech.glide.load.engine.bitmap_recycle.b f8519b;

        c(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.f8518a = parcelFileDescriptorRewinder;
            this.f8519b = bVar;
        }

        @Override // com.bumptech.glide.load.b.h
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            z zVar;
            z zVar2 = null;
            try {
                FileDescriptor fileDescriptor = this.f8518a.a().getFileDescriptor();
                zVar = new z(h.b.c(new FileInputStream(fileDescriptor), fileDescriptor), this.f8519b);
            } catch (Throwable th) {
                th = th;
            }
            try {
                ImageHeaderParser.ImageType c10 = imageHeaderParser.c(zVar);
                try {
                    zVar.close();
                } catch (IOException unused) {
                }
                this.f8518a.a();
                return c10;
            } catch (Throwable th2) {
                th = th2;
                zVar2 = zVar;
                if (zVar2 != null) {
                    try {
                        zVar2.close();
                    } catch (IOException unused2) {
                    }
                }
                this.f8518a.a();
                throw th;
            }
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    class d implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ByteBuffer f8520a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.bumptech.glide.load.engine.bitmap_recycle.b f8521b;

        d(ByteBuffer byteBuffer, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.f8520a = byteBuffer;
            this.f8521b = bVar;
        }

        @Override // com.bumptech.glide.load.b.g
        public int a(ImageHeaderParser imageHeaderParser) throws IOException {
            return imageHeaderParser.b(this.f8520a, this.f8521b);
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    class e implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InputStream f8522a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.bumptech.glide.load.engine.bitmap_recycle.b f8523b;

        e(InputStream inputStream, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.f8522a = inputStream;
            this.f8523b = bVar;
        }

        @Override // com.bumptech.glide.load.b.g
        public int a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.d(this.f8522a, this.f8523b);
            } finally {
                this.f8522a.reset();
            }
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    class f implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ParcelFileDescriptorRewinder f8524a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.bumptech.glide.load.engine.bitmap_recycle.b f8525b;

        f(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.f8524a = parcelFileDescriptorRewinder;
            this.f8525b = bVar;
        }

        @Override // com.bumptech.glide.load.b.g
        public int a(ImageHeaderParser imageHeaderParser) throws IOException {
            z zVar;
            z zVar2 = null;
            try {
                FileDescriptor fileDescriptor = this.f8524a.a().getFileDescriptor();
                zVar = new z(h.b.c(new FileInputStream(fileDescriptor), fileDescriptor), this.f8525b);
            } catch (Throwable th) {
                th = th;
            }
            try {
                int d4 = imageHeaderParser.d(zVar, this.f8525b);
                try {
                    zVar.close();
                } catch (IOException unused) {
                }
                this.f8524a.a();
                return d4;
            } catch (Throwable th2) {
                th = th2;
                zVar2 = zVar;
                if (zVar2 != null) {
                    try {
                        zVar2.close();
                    } catch (IOException unused2) {
                    }
                }
                this.f8524a.a();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    public interface g {
        int a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    public interface h {
        ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    private b() {
    }

    @RequiresApi(21)
    public static int a(@NonNull List<ImageHeaderParser> list, @NonNull ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        return d(list, new f(parcelFileDescriptorRewinder, bVar));
    }

    public static int b(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new z(inputStream, bVar);
        }
        inputStream.mark(f8515a);
        return d(list, new e(inputStream, bVar));
    }

    public static int c(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        if (byteBuffer == null) {
            return -1;
        }
        return d(list, new d(byteBuffer, bVar));
    }

    private static int d(@NonNull List<ImageHeaderParser> list, g gVar) throws IOException {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            int a10 = gVar.a(list.get(i4));
            if (a10 != -1) {
                return a10;
            }
        }
        return -1;
    }

    @NonNull
    @RequiresApi(21)
    public static ImageHeaderParser.ImageType e(@NonNull List<ImageHeaderParser> list, @NonNull ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        return h(list, new c(parcelFileDescriptorRewinder, bVar));
    }

    @NonNull
    public static ImageHeaderParser.ImageType f(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new z(inputStream, bVar);
        }
        inputStream.mark(f8515a);
        return h(list, new a(inputStream));
    }

    @NonNull
    public static ImageHeaderParser.ImageType g(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        return h(list, new C0045b(byteBuffer));
    }

    @NonNull
    private static ImageHeaderParser.ImageType h(@NonNull List<ImageHeaderParser> list, h hVar) throws IOException {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            ImageHeaderParser.ImageType a10 = hVar.a(list.get(i4));
            if (a10 != ImageHeaderParser.ImageType.UNKNOWN) {
                return a10;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
