package com.bumptech.glide.integration.webp;

import androidx.core.internal.view.SupportMenu;
import androidx.core.view.MotionEventCompat;
import com.bumptech.glide.load.resource.bitmap.z;
import com.bumptech.glide.util.m;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public class WebpHeaderParser {

    /* renamed from: a  reason: collision with root package name */
    public static final int f8216a = 21;

    /* renamed from: b  reason: collision with root package name */
    private static final int f8217b = 1380533830;

    /* renamed from: c  reason: collision with root package name */
    private static final int f8218c = 1464156752;

    /* renamed from: d  reason: collision with root package name */
    private static final int f8219d = 1448097824;

    /* renamed from: e  reason: collision with root package name */
    private static final int f8220e = 1448097868;

    /* renamed from: f  reason: collision with root package name */
    private static final int f8221f = 1448097880;

    /* renamed from: g  reason: collision with root package name */
    private static final int f8222g = 16;

    /* renamed from: h  reason: collision with root package name */
    private static final int f8223h = 2;

    /* renamed from: i  reason: collision with root package name */
    private static final int f8224i = 8;

    /* renamed from: j  reason: collision with root package name */
    private static final String f8225j = "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA==";

    /* renamed from: k  reason: collision with root package name */
    public static final boolean f8226k = g();

    /* loaded from: classes.dex */
    public enum WebpImageType {
        WEBP_SIMPLE(false, false),
        WEBP_LOSSLESS(false, false),
        WEBP_LOSSLESS_WITH_ALPHA(true, false),
        WEBP_EXTENDED(false, false),
        WEBP_EXTENDED_WITH_ALPHA(true, false),
        WEBP_EXTENDED_ANIMATED(false, true),
        NONE_WEBP(false, false);
        

        /* renamed from: a  reason: collision with root package name */
        private final boolean f8228a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f8229b;

        WebpImageType(boolean z9, boolean z10) {
            this.f8228a = z9;
            this.f8229b = z10;
        }

        public boolean hasAlpha() {
            return this.f8228a;
        }

        public boolean hasAnimation() {
            return this.f8229b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f8230a;

        /* renamed from: b  reason: collision with root package name */
        private final int f8231b;

        /* renamed from: c  reason: collision with root package name */
        private final int f8232c;

        /* renamed from: d  reason: collision with root package name */
        private int f8233d;

        a(byte[] bArr, int i4, int i10) {
            this.f8230a = bArr;
            this.f8231b = i4;
            this.f8232c = i10;
            this.f8233d = i4;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public int a() throws IOException {
            return ((d() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (d() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public int b(byte[] bArr, int i4) throws IOException {
            int min = Math.min((this.f8231b + this.f8232c) - this.f8233d, i4);
            if (min == 0) {
                return -1;
            }
            System.arraycopy(this.f8230a, this.f8233d, bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public short c() throws IOException {
            return (short) (d() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public int d() throws IOException {
            int i4 = this.f8233d;
            if (i4 >= this.f8231b + this.f8232c) {
                return -1;
            }
            byte[] bArr = this.f8230a;
            this.f8233d = i4 + 1;
            return bArr[i4];
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public long skip(long j4) throws IOException {
            int min = (int) Math.min((this.f8231b + this.f8232c) - this.f8233d, j4);
            this.f8233d += min;
            return min;
        }
    }

    /* loaded from: classes.dex */
    private static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f8234a;

        b(ByteBuffer byteBuffer) {
            this.f8234a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public int a() throws IOException {
            return ((d() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (d() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public int b(byte[] bArr, int i4) throws IOException {
            int min = Math.min(i4, this.f8234a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f8234a.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public short c() throws IOException {
            return (short) (d() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public int d() throws IOException {
            if (this.f8234a.remaining() < 1) {
                return -1;
            }
            return this.f8234a.get();
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public long skip(long j4) throws IOException {
            int min = (int) Math.min(this.f8234a.remaining(), j4);
            ByteBuffer byteBuffer = this.f8234a;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface c {
        int a() throws IOException;

        int b(byte[] bArr, int i4) throws IOException;

        short c() throws IOException;

        int d() throws IOException;

        long skip(long j4) throws IOException;
    }

    /* loaded from: classes.dex */
    private static final class d implements c {

        /* renamed from: a  reason: collision with root package name */
        private final InputStream f8235a;

        d(InputStream inputStream) {
            this.f8235a = inputStream;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public int a() throws IOException {
            return ((this.f8235a.read() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (this.f8235a.read() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public int b(byte[] bArr, int i4) throws IOException {
            int i10 = i4;
            while (i10 > 0) {
                int read = this.f8235a.read(bArr, i4 - i10, i10);
                if (read == -1) {
                    break;
                }
                i10 -= read;
            }
            return i4 - i10;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public short c() throws IOException {
            return (short) (this.f8235a.read() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public int d() throws IOException {
            return this.f8235a.read();
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.c
        public long skip(long j4) throws IOException {
            if (j4 < 0) {
                return 0L;
            }
            long j10 = j4;
            while (j10 > 0) {
                long skip = this.f8235a.skip(j10);
                if (skip <= 0) {
                    if (this.f8235a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j10 -= skip;
            }
            return j4 - j10;
        }
    }

    private static WebpImageType a(c cVar) throws IOException {
        if ((((cVar.a() << 16) & SupportMenu.CATEGORY_MASK) | (cVar.a() & 65535)) != 1380533830) {
            return WebpImageType.NONE_WEBP;
        }
        cVar.skip(4L);
        if ((((cVar.a() << 16) & SupportMenu.CATEGORY_MASK) | (cVar.a() & 65535)) != f8218c) {
            return WebpImageType.NONE_WEBP;
        }
        int a10 = ((cVar.a() << 16) & SupportMenu.CATEGORY_MASK) | (cVar.a() & 65535);
        if (a10 == f8219d) {
            return WebpImageType.WEBP_SIMPLE;
        }
        if (a10 == f8220e) {
            cVar.skip(4L);
            return (cVar.d() & 8) != 0 ? WebpImageType.WEBP_LOSSLESS_WITH_ALPHA : WebpImageType.WEBP_LOSSLESS;
        } else if (a10 == f8221f) {
            cVar.skip(4L);
            int d4 = cVar.d();
            if ((d4 & 2) != 0) {
                return WebpImageType.WEBP_EXTENDED_ANIMATED;
            }
            if ((d4 & 16) != 0) {
                return WebpImageType.WEBP_EXTENDED_WITH_ALPHA;
            }
            return WebpImageType.WEBP_EXTENDED;
        } else {
            return WebpImageType.NONE_WEBP;
        }
    }

    public static WebpImageType b(InputStream inputStream, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        if (inputStream == null) {
            return WebpImageType.NONE_WEBP;
        }
        if (!inputStream.markSupported()) {
            inputStream = new z(inputStream, bVar);
        }
        inputStream.mark(21);
        try {
            return a(new d((InputStream) m.d(inputStream)));
        } finally {
            inputStream.reset();
        }
    }

    public static WebpImageType c(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return WebpImageType.NONE_WEBP;
        }
        return a(new b((ByteBuffer) m.d(byteBuffer)));
    }

    public static WebpImageType d(byte[] bArr) throws IOException {
        return e(bArr, 0, bArr.length);
    }

    public static WebpImageType e(byte[] bArr, int i4, int i10) throws IOException {
        return a(new a(bArr, i4, i10));
    }

    public static boolean f(WebpImageType webpImageType) {
        return webpImageType == WebpImageType.WEBP_EXTENDED_ANIMATED;
    }

    public static boolean g() {
        return true;
    }

    public static boolean h(WebpImageType webpImageType) {
        return (webpImageType == WebpImageType.NONE_WEBP || webpImageType == WebpImageType.WEBP_SIMPLE) ? false : true;
    }

    public static boolean i(WebpImageType webpImageType) {
        return webpImageType == WebpImageType.WEBP_SIMPLE || webpImageType == WebpImageType.WEBP_LOSSLESS || webpImageType == WebpImageType.WEBP_LOSSLESS_WITH_ALPHA || webpImageType == WebpImageType.WEBP_EXTENDED || webpImageType == WebpImageType.WEBP_EXTENDED_WITH_ALPHA;
    }
}
