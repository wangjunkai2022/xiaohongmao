package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class DefaultImageHeaderParser implements ImageHeaderParser {
    private static final int A = 1635150182;
    private static final int B = 1635150195;

    /* renamed from: b  reason: collision with root package name */
    private static final String f9159b = "DfltImageHeaderParser";

    /* renamed from: c  reason: collision with root package name */
    private static final int f9160c = 4671814;

    /* renamed from: d  reason: collision with root package name */
    private static final int f9161d = -1991225785;

    /* renamed from: e  reason: collision with root package name */
    static final int f9162e = 65496;

    /* renamed from: f  reason: collision with root package name */
    private static final int f9163f = 19789;

    /* renamed from: g  reason: collision with root package name */
    private static final int f9164g = 18761;

    /* renamed from: j  reason: collision with root package name */
    private static final int f9167j = 218;

    /* renamed from: k  reason: collision with root package name */
    private static final int f9168k = 217;

    /* renamed from: l  reason: collision with root package name */
    static final int f9169l = 255;

    /* renamed from: m  reason: collision with root package name */
    static final int f9170m = 225;

    /* renamed from: n  reason: collision with root package name */
    private static final int f9171n = 274;

    /* renamed from: p  reason: collision with root package name */
    private static final int f9173p = 1380533830;

    /* renamed from: q  reason: collision with root package name */
    private static final int f9174q = 1464156752;

    /* renamed from: r  reason: collision with root package name */
    private static final int f9175r = 1448097792;

    /* renamed from: s  reason: collision with root package name */
    private static final int f9176s = -256;

    /* renamed from: t  reason: collision with root package name */
    private static final int f9177t = 255;

    /* renamed from: u  reason: collision with root package name */
    private static final int f9178u = 88;

    /* renamed from: v  reason: collision with root package name */
    private static final int f9179v = 76;

    /* renamed from: w  reason: collision with root package name */
    private static final int f9180w = 2;

    /* renamed from: x  reason: collision with root package name */
    private static final int f9181x = 16;

    /* renamed from: y  reason: collision with root package name */
    private static final int f9182y = 8;

    /* renamed from: z  reason: collision with root package name */
    private static final int f9183z = 1718909296;

    /* renamed from: h  reason: collision with root package name */
    private static final String f9165h = "Exif\u0000\u0000";

    /* renamed from: i  reason: collision with root package name */
    static final byte[] f9166i = f9165h.getBytes(Charset.forName("UTF-8"));

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f9172o = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface Reader {

        /* loaded from: classes.dex */
        public static final class EndOfFileException extends IOException {

            /* renamed from: a  reason: collision with root package name */
            private static final long f9184a = 1;

            EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        int a() throws IOException;

        int b(byte[] bArr, int i4) throws IOException;

        short c() throws IOException;

        long skip(long j4) throws IOException;
    }

    /* loaded from: classes.dex */
    private static final class a implements Reader {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f9185a;

        a(ByteBuffer byteBuffer) {
            this.f9185a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int a() throws Reader.EndOfFileException {
            return (c() << 8) | c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int b(byte[] bArr, int i4) {
            int min = Math.min(i4, this.f9185a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f9185a.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short c() throws Reader.EndOfFileException {
            if (this.f9185a.remaining() >= 1) {
                return (short) (this.f9185a.get() & 255);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j4) {
            int min = (int) Math.min(this.f9185a.remaining(), j4);
            ByteBuffer byteBuffer = this.f9185a;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f9186a;

        b(byte[] bArr, int i4) {
            this.f9186a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i4);
        }

        private boolean c(int i4, int i10) {
            return this.f9186a.remaining() - i4 >= i10;
        }

        short a(int i4) {
            if (c(i4, 2)) {
                return this.f9186a.getShort(i4);
            }
            return (short) -1;
        }

        int b(int i4) {
            if (c(i4, 4)) {
                return this.f9186a.getInt(i4);
            }
            return -1;
        }

        int d() {
            return this.f9186a.remaining();
        }

        void e(ByteOrder byteOrder) {
            this.f9186a.order(byteOrder);
        }
    }

    /* loaded from: classes.dex */
    private static final class c implements Reader {

        /* renamed from: a  reason: collision with root package name */
        private final InputStream f9187a;

        c(InputStream inputStream) {
            this.f9187a = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int a() throws IOException {
            return (c() << 8) | c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int b(byte[] bArr, int i4) throws IOException {
            int i10 = 0;
            int i11 = 0;
            while (i10 < i4 && (i11 = this.f9187a.read(bArr, i10, i4 - i10)) != -1) {
                i10 += i11;
            }
            if (i10 == 0 && i11 == -1) {
                throw new Reader.EndOfFileException();
            }
            return i10;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short c() throws IOException {
            int read = this.f9187a.read();
            if (read != -1) {
                return (short) read;
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j4) throws IOException {
            if (j4 < 0) {
                return 0L;
            }
            long j10 = j4;
            while (j10 > 0) {
                long skip = this.f9187a.skip(j10);
                if (skip <= 0) {
                    if (this.f9187a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j10 -= skip;
            }
            return j4 - j10;
        }
    }

    private static int e(int i4, int i10) {
        return i4 + 2 + (i10 * 12);
    }

    private int f(Reader reader, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        try {
            int a10 = reader.a();
            if (!h(a10)) {
                if (Log.isLoggable(f9159b, 3)) {
                    Log.d(f9159b, "Parser doesn't handle magic number: " + a10);
                }
                return -1;
            }
            int j4 = j(reader);
            if (j4 == -1) {
                if (Log.isLoggable(f9159b, 3)) {
                    Log.d(f9159b, "Failed to parse exif segment length, or exif segment not found");
                }
                return -1;
            }
            byte[] bArr = (byte[]) bVar.c(j4, byte[].class);
            int l10 = l(reader, bArr, j4);
            bVar.put(bArr);
            return l10;
        } catch (Reader.EndOfFileException unused) {
            return -1;
        }
    }

    @NonNull
    private ImageHeaderParser.ImageType g(Reader reader) throws IOException {
        try {
            int a10 = reader.a();
            if (a10 == f9162e) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int c10 = (a10 << 8) | reader.c();
            if (c10 == f9160c) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int c11 = (c10 << 8) | reader.c();
            if (c11 == f9161d) {
                reader.skip(21L);
                try {
                    return reader.c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            } else if (c11 != 1380533830) {
                return m(reader, c11) ? ImageHeaderParser.ImageType.AVIF : ImageHeaderParser.ImageType.UNKNOWN;
            } else {
                reader.skip(4L);
                if (((reader.a() << 16) | reader.a()) != f9174q) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int a11 = (reader.a() << 16) | reader.a();
                if ((a11 & (-256)) != f9175r) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int i4 = a11 & 255;
                if (i4 != 88) {
                    if (i4 == 76) {
                        reader.skip(4L);
                        return (reader.c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                    }
                    return ImageHeaderParser.ImageType.WEBP;
                }
                reader.skip(4L);
                short c12 = reader.c();
                if ((c12 & 2) != 0) {
                    return ImageHeaderParser.ImageType.ANIMATED_WEBP;
                }
                if ((c12 & 16) != 0) {
                    return ImageHeaderParser.ImageType.WEBP_A;
                }
                return ImageHeaderParser.ImageType.WEBP;
            }
        } catch (Reader.EndOfFileException unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    private static boolean h(int i4) {
        return (i4 & f9162e) == f9162e || i4 == f9163f || i4 == f9164g;
    }

    private boolean i(byte[] bArr, int i4) {
        boolean z9 = bArr != null && i4 > f9166i.length;
        if (z9) {
            int i10 = 0;
            while (true) {
                byte[] bArr2 = f9166i;
                if (i10 >= bArr2.length) {
                    break;
                } else if (bArr[i10] != bArr2[i10]) {
                    return false;
                } else {
                    i10++;
                }
            }
        }
        return z9;
    }

    private int j(Reader reader) throws IOException {
        short c10;
        short c11;
        int a10;
        long j4;
        long skip;
        do {
            if (reader.c() != 255) {
                if (Log.isLoggable(f9159b, 3)) {
                    Log.d(f9159b, "Unknown segmentId=" + ((int) c10));
                }
                return -1;
            }
            c11 = reader.c();
            if (c11 == 218) {
                return -1;
            }
            if (c11 == 217) {
                if (Log.isLoggable(f9159b, 3)) {
                    Log.d(f9159b, "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            a10 = reader.a() - 2;
            if (c11 == 225) {
                return a10;
            }
            j4 = a10;
            skip = reader.skip(j4);
        } while (skip == j4);
        if (Log.isLoggable(f9159b, 3)) {
            Log.d(f9159b, "Unable to skip enough data, type: " + ((int) c11) + ", wanted to skip: " + a10 + ", but actually skipped: " + skip);
        }
        return -1;
    }

    private static int k(b bVar) {
        ByteOrder byteOrder;
        short a10 = bVar.a(6);
        if (a10 == f9164g) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (a10 != f9163f) {
            if (Log.isLoggable(f9159b, 3)) {
                Log.d(f9159b, "Unknown endianness = " + ((int) a10));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        bVar.e(byteOrder);
        int b10 = bVar.b(10) + 6;
        short a11 = bVar.a(b10);
        for (int i4 = 0; i4 < a11; i4++) {
            int e4 = e(b10, i4);
            short a12 = bVar.a(e4);
            if (a12 == 274) {
                short a13 = bVar.a(e4 + 2);
                if (a13 >= 1 && a13 <= 12) {
                    int b11 = bVar.b(e4 + 4);
                    if (b11 < 0) {
                        if (Log.isLoggable(f9159b, 3)) {
                            Log.d(f9159b, "Negative tiff component count");
                        }
                    } else {
                        if (Log.isLoggable(f9159b, 3)) {
                            Log.d(f9159b, "Got tagIndex=" + i4 + " tagType=" + ((int) a12) + " formatCode=" + ((int) a13) + " componentCount=" + b11);
                        }
                        int i10 = b11 + f9172o[a13];
                        if (i10 > 4) {
                            if (Log.isLoggable(f9159b, 3)) {
                                Log.d(f9159b, "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) a13));
                            }
                        } else {
                            int i11 = e4 + 8;
                            if (i11 >= 0 && i11 <= bVar.d()) {
                                if (i10 >= 0 && i10 + i11 <= bVar.d()) {
                                    return bVar.a(i11);
                                }
                                if (Log.isLoggable(f9159b, 3)) {
                                    Log.d(f9159b, "Illegal number of bytes for TI tag data tagType=" + ((int) a12));
                                }
                            } else if (Log.isLoggable(f9159b, 3)) {
                                Log.d(f9159b, "Illegal tagValueOffset=" + i11 + " tagType=" + ((int) a12));
                            }
                        }
                    }
                } else if (Log.isLoggable(f9159b, 3)) {
                    Log.d(f9159b, "Got invalid format code = " + ((int) a13));
                }
            }
        }
        return -1;
    }

    private int l(Reader reader, byte[] bArr, int i4) throws IOException {
        int b10 = reader.b(bArr, i4);
        if (b10 != i4) {
            if (Log.isLoggable(f9159b, 3)) {
                Log.d(f9159b, "Unable to read exif segment data, length: " + i4 + ", actually read: " + b10);
            }
            return -1;
        } else if (i(bArr, i4)) {
            return k(new b(bArr, i4));
        } else {
            if (Log.isLoggable(f9159b, 3)) {
                Log.d(f9159b, "Missing jpeg exif preamble");
            }
            return -1;
        }
    }

    private boolean m(Reader reader, int i4) throws IOException {
        if (((reader.a() << 16) | reader.a()) != 1718909296) {
            return false;
        }
        int a10 = (reader.a() << 16) | reader.a();
        if (a10 == A || a10 == B) {
            return true;
        }
        reader.skip(4L);
        int i10 = i4 - 16;
        if (i10 % 4 != 0) {
            return false;
        }
        int i11 = 0;
        while (i11 < 5 && i10 > 0) {
            int a11 = (reader.a() << 16) | reader.a();
            if (a11 == A || a11 == B) {
                return true;
            }
            i11++;
            i10 -= 4;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType a(@NonNull ByteBuffer byteBuffer) throws IOException {
        return g(new a((ByteBuffer) com.bumptech.glide.util.m.d(byteBuffer)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int b(@NonNull ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        return f(new a((ByteBuffer) com.bumptech.glide.util.m.d(byteBuffer)), (com.bumptech.glide.load.engine.bitmap_recycle.b) com.bumptech.glide.util.m.d(bVar));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType c(@NonNull InputStream inputStream) throws IOException {
        return g(new c((InputStream) com.bumptech.glide.util.m.d(inputStream)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int d(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        return f(new c((InputStream) com.bumptech.glide.util.m.d(inputStream)), (com.bumptech.glide.load.engine.bitmap_recycle.b) com.bumptech.glide.util.m.d(bVar));
    }
}
