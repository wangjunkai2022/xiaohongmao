package com.yalantis.ucrop.util;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.core.view.MotionEventCompat;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* compiled from: ImageHeaderParser.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static final String f61121b = "ImageHeaderParser";

    /* renamed from: c  reason: collision with root package name */
    public static final int f61122c = -1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f61123d = 65496;

    /* renamed from: e  reason: collision with root package name */
    private static final int f61124e = 19789;

    /* renamed from: f  reason: collision with root package name */
    private static final int f61125f = 18761;

    /* renamed from: i  reason: collision with root package name */
    private static final int f61128i = 218;

    /* renamed from: j  reason: collision with root package name */
    private static final int f61129j = 217;

    /* renamed from: k  reason: collision with root package name */
    private static final int f61130k = 255;

    /* renamed from: l  reason: collision with root package name */
    private static final int f61131l = 225;

    /* renamed from: m  reason: collision with root package name */
    private static final int f61132m = 274;

    /* renamed from: a  reason: collision with root package name */
    private final b f61134a;

    /* renamed from: g  reason: collision with root package name */
    private static final String f61126g = "Exif\u0000\u0000";

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f61127h = f61126g.getBytes(Charset.forName("UTF-8"));

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f61133n = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageHeaderParser.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f61135a;

        public a(byte[] bArr, int i4) {
            this.f61135a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i4);
        }

        public short a(int i4) {
            return this.f61135a.getShort(i4);
        }

        public int b(int i4) {
            return this.f61135a.getInt(i4);
        }

        public int c() {
            return this.f61135a.remaining();
        }

        public void d(ByteOrder byteOrder) {
            this.f61135a.order(byteOrder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageHeaderParser.java */
    /* loaded from: classes3.dex */
    public interface b {
        int a() throws IOException;

        int b(byte[] bArr, int i4) throws IOException;

        short c() throws IOException;

        long skip(long j4) throws IOException;
    }

    /* compiled from: ImageHeaderParser.java */
    /* loaded from: classes3.dex */
    private static class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private final InputStream f61136a;

        public c(InputStream inputStream) {
            this.f61136a = inputStream;
        }

        @Override // com.yalantis.ucrop.util.f.b
        public int a() throws IOException {
            return ((this.f61136a.read() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (this.f61136a.read() & 255);
        }

        @Override // com.yalantis.ucrop.util.f.b
        public int b(byte[] bArr, int i4) throws IOException {
            int i10 = i4;
            while (i10 > 0) {
                int read = this.f61136a.read(bArr, i4 - i10, i10);
                if (read == -1) {
                    break;
                }
                i10 -= read;
            }
            return i4 - i10;
        }

        @Override // com.yalantis.ucrop.util.f.b
        public short c() throws IOException {
            return (short) (this.f61136a.read() & 255);
        }

        @Override // com.yalantis.ucrop.util.f.b
        public long skip(long j4) throws IOException {
            if (j4 < 0) {
                return 0L;
            }
            long j10 = j4;
            while (j10 > 0) {
                long skip = this.f61136a.skip(j10);
                if (skip <= 0) {
                    if (this.f61136a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j10 -= skip;
            }
            return j4 - j10;
        }
    }

    public f(InputStream inputStream) {
        this.f61134a = new c(inputStream);
    }

    private static int a(int i4, int i10) {
        return i4 + 2 + (i10 * 12);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0074 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0069 -> B:54:0x0070). Please submit an issue!!! */
    @androidx.annotation.RequiresApi(21)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void b(android.content.Context r4, int r5, int r6, android.net.Uri r7, android.net.Uri r8) {
        /*
            java.lang.String r0 = "ImageHeaderParser"
            if (r4 != 0) goto La
            java.lang.String r4 = "context is null"
            android.util.Log.d(r0, r4)
            return
        La:
            r1 = 0
            android.content.ContentResolver r2 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4b
            java.io.InputStream r7 = r2.openInputStream(r7)     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4b
            androidx.exifinterface.media.ExifInterface r2 = new androidx.exifinterface.media.ExifInterface     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            java.lang.String r3 = "rw"
            android.os.ParcelFileDescriptor r1 = r4.openFileDescriptor(r8, r3)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            androidx.exifinterface.media.ExifInterface r4 = new androidx.exifinterface.media.ExifInterface     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            java.io.FileDescriptor r8 = r1.getFileDescriptor()     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            r4.<init>(r8)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            f(r2, r4, r5, r6)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            if (r7 == 0) goto L3c
            r7.close()     // Catch: java.io.IOException -> L34
            goto L3c
        L34:
            r4 = move-exception
            java.lang.String r5 = r4.getMessage()
            android.util.Log.d(r0, r5, r4)
        L3c:
            r1.close()     // Catch: java.io.IOException -> L68
            goto L70
        L40:
            r4 = move-exception
            r5 = r1
            r1 = r7
            goto L72
        L44:
            r4 = move-exception
            r5 = r1
            r1 = r7
            goto L4d
        L48:
            r4 = move-exception
            r5 = r1
            goto L72
        L4b:
            r4 = move-exception
            r5 = r1
        L4d:
            java.lang.String r6 = r4.getMessage()     // Catch: java.lang.Throwable -> L71
            android.util.Log.d(r0, r6, r4)     // Catch: java.lang.Throwable -> L71
            if (r1 == 0) goto L62
            r1.close()     // Catch: java.io.IOException -> L5a
            goto L62
        L5a:
            r4 = move-exception
            java.lang.String r6 = r4.getMessage()
            android.util.Log.d(r0, r6, r4)
        L62:
            if (r5 == 0) goto L70
            r5.close()     // Catch: java.io.IOException -> L68
            goto L70
        L68:
            r4 = move-exception
            java.lang.String r5 = r4.getMessage()
            android.util.Log.d(r0, r5, r4)
        L70:
            return
        L71:
            r4 = move-exception
        L72:
            if (r1 == 0) goto L80
            r1.close()     // Catch: java.io.IOException -> L78
            goto L80
        L78:
            r6 = move-exception
            java.lang.String r7 = r6.getMessage()
            android.util.Log.d(r0, r7, r6)
        L80:
            if (r5 == 0) goto L8e
            r5.close()     // Catch: java.io.IOException -> L86
            goto L8e
        L86:
            r5 = move-exception
            java.lang.String r6 = r5.getMessage()
            android.util.Log.d(r0, r6, r5)
        L8e:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yalantis.ucrop.util.f.b(android.content.Context, int, int, android.net.Uri, android.net.Uri):void");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0037 -> B:31:0x003e). Please submit an issue!!! */
    public static void c(Context context, int i4, int i10, Uri uri, String str) {
        if (context == null) {
            Log.d(f61121b, "context is null");
            return;
        }
        InputStream inputStream = null;
        try {
            try {
                try {
                    inputStream = context.getContentResolver().openInputStream(uri);
                    f(new ExifInterface(inputStream), new ExifInterface(str), i4, i10);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e4) {
                            Log.d(f61121b, e4.getMessage(), e4);
                        }
                    }
                    throw th;
                }
            } catch (IOException e10) {
                Log.d(f61121b, e10.getMessage(), e10);
            }
        } catch (IOException e11) {
            Log.d(f61121b, e11.getMessage(), e11);
            if (inputStream == null) {
                return;
            }
            inputStream.close();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0036 -> B:28:0x003d). Please submit an issue!!! */
    @RequiresApi(21)
    public static void d(Context context, ExifInterface exifInterface, int i4, int i10, Uri uri) {
        if (context == null) {
            Log.d(f61121b, "context is null");
            return;
        }
        ParcelFileDescriptor parcelFileDescriptor = null;
        try {
            try {
                try {
                    parcelFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "rw");
                    f(exifInterface, new ExifInterface(parcelFileDescriptor.getFileDescriptor()), i4, i10);
                    parcelFileDescriptor.close();
                } catch (Throwable th) {
                    if (parcelFileDescriptor != null) {
                        try {
                            parcelFileDescriptor.close();
                        } catch (IOException e4) {
                            Log.d(f61121b, e4.getMessage(), e4);
                        }
                    }
                    throw th;
                }
            } catch (IOException e10) {
                Log.d(f61121b, e10.getMessage());
                if (parcelFileDescriptor == null) {
                    return;
                }
                parcelFileDescriptor.close();
            }
        } catch (IOException e11) {
            Log.d(f61121b, e11.getMessage(), e11);
        }
    }

    public static void e(ExifInterface exifInterface, int i4, int i10, String str) {
        try {
            f(exifInterface, new ExifInterface(str), i4, i10);
        } catch (IOException e4) {
            Log.d(f61121b, e4.getMessage());
        }
    }

    private static void f(ExifInterface exifInterface, ExifInterface exifInterface2, int i4, int i10) throws IOException {
        String[] strArr = {ExifInterface.TAG_F_NUMBER, ExifInterface.TAG_DATETIME, ExifInterface.TAG_DATETIME_DIGITIZED, ExifInterface.TAG_EXPOSURE_TIME, ExifInterface.TAG_FLASH, ExifInterface.TAG_FOCAL_LENGTH, ExifInterface.TAG_GPS_ALTITUDE, ExifInterface.TAG_GPS_ALTITUDE_REF, ExifInterface.TAG_GPS_DATESTAMP, ExifInterface.TAG_GPS_LATITUDE, ExifInterface.TAG_GPS_LATITUDE_REF, ExifInterface.TAG_GPS_LONGITUDE, ExifInterface.TAG_GPS_LONGITUDE_REF, ExifInterface.TAG_GPS_PROCESSING_METHOD, ExifInterface.TAG_GPS_TIMESTAMP, ExifInterface.TAG_PHOTOGRAPHIC_SENSITIVITY, ExifInterface.TAG_MAKE, ExifInterface.TAG_MODEL, ExifInterface.TAG_SUBSEC_TIME, ExifInterface.TAG_SUBSEC_TIME_DIGITIZED, ExifInterface.TAG_SUBSEC_TIME_ORIGINAL, ExifInterface.TAG_WHITE_BALANCE};
        for (int i11 = 0; i11 < 22; i11++) {
            String str = strArr[i11];
            String attribute = exifInterface.getAttribute(str);
            if (!TextUtils.isEmpty(attribute)) {
                exifInterface2.setAttribute(str, attribute);
            }
        }
        exifInterface2.setAttribute(ExifInterface.TAG_IMAGE_WIDTH, String.valueOf(i4));
        exifInterface2.setAttribute(ExifInterface.TAG_IMAGE_LENGTH, String.valueOf(i10));
        exifInterface2.setAttribute(ExifInterface.TAG_ORIENTATION, "0");
        exifInterface2.saveAttributes();
    }

    private static boolean h(int i4) {
        return (i4 & f61123d) == f61123d || i4 == f61124e || i4 == f61125f;
    }

    private boolean i(byte[] bArr, int i4) {
        boolean z9 = bArr != null && i4 > f61127h.length;
        if (z9) {
            int i10 = 0;
            while (true) {
                byte[] bArr2 = f61127h;
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

    private int j() throws IOException {
        short c10;
        short c11;
        int a10;
        long j4;
        long skip;
        do {
            if (this.f61134a.c() != 255) {
                if (Log.isLoggable(f61121b, 3)) {
                    Log.d(f61121b, "Unknown segmentId=" + ((int) c10));
                }
                return -1;
            }
            c11 = this.f61134a.c();
            if (c11 == 218) {
                return -1;
            }
            if (c11 == 217) {
                if (Log.isLoggable(f61121b, 3)) {
                    Log.d(f61121b, "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            a10 = this.f61134a.a() - 2;
            if (c11 == 225) {
                return a10;
            }
            j4 = a10;
            skip = this.f61134a.skip(j4);
        } while (skip == j4);
        if (Log.isLoggable(f61121b, 3)) {
            Log.d(f61121b, "Unable to skip enough data, type: " + ((int) c11) + ", wanted to skip: " + a10 + ", but actually skipped: " + skip);
        }
        return -1;
    }

    private static int k(a aVar) {
        ByteOrder byteOrder;
        short a10 = aVar.a(6);
        if (a10 == f61124e) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (a10 == f61125f) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable(f61121b, 3)) {
                Log.d(f61121b, "Unknown endianness = " + ((int) a10));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        aVar.d(byteOrder);
        int b10 = aVar.b(10) + 6;
        short a11 = aVar.a(b10);
        for (int i4 = 0; i4 < a11; i4++) {
            int a12 = a(b10, i4);
            short a13 = aVar.a(a12);
            if (a13 == 274) {
                short a14 = aVar.a(a12 + 2);
                if (a14 >= 1 && a14 <= 12) {
                    int b11 = aVar.b(a12 + 4);
                    if (b11 < 0) {
                        if (Log.isLoggable(f61121b, 3)) {
                            Log.d(f61121b, "Negative tiff component count");
                        }
                    } else {
                        if (Log.isLoggable(f61121b, 3)) {
                            Log.d(f61121b, "Got tagIndex=" + i4 + " tagType=" + ((int) a13) + " formatCode=" + ((int) a14) + " componentCount=" + b11);
                        }
                        int i10 = b11 + f61133n[a14];
                        if (i10 > 4) {
                            if (Log.isLoggable(f61121b, 3)) {
                                Log.d(f61121b, "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) a14));
                            }
                        } else {
                            int i11 = a12 + 8;
                            if (i11 >= 0 && i11 <= aVar.c()) {
                                if (i10 >= 0 && i10 + i11 <= aVar.c()) {
                                    return aVar.a(i11);
                                }
                                if (Log.isLoggable(f61121b, 3)) {
                                    Log.d(f61121b, "Illegal number of bytes for TI tag data tagType=" + ((int) a13));
                                }
                            } else if (Log.isLoggable(f61121b, 3)) {
                                Log.d(f61121b, "Illegal tagValueOffset=" + i11 + " tagType=" + ((int) a13));
                            }
                        }
                    }
                } else if (Log.isLoggable(f61121b, 3)) {
                    Log.d(f61121b, "Got invalid format code = " + ((int) a14));
                }
            }
        }
        return -1;
    }

    private int l(byte[] bArr, int i4) throws IOException {
        int b10 = this.f61134a.b(bArr, i4);
        if (b10 != i4) {
            if (Log.isLoggable(f61121b, 3)) {
                Log.d(f61121b, "Unable to read exif segment data, length: " + i4 + ", actually read: " + b10);
            }
            return -1;
        } else if (i(bArr, i4)) {
            return k(new a(bArr, i4));
        } else {
            if (Log.isLoggable(f61121b, 3)) {
                Log.d(f61121b, "Missing jpeg exif preamble");
            }
            return -1;
        }
    }

    public int g() throws IOException {
        int a10 = this.f61134a.a();
        if (!h(a10)) {
            if (Log.isLoggable(f61121b, 3)) {
                Log.d(f61121b, "Parser doesn't handle magic number: " + a10);
            }
            return -1;
        }
        int j4 = j();
        if (j4 == -1) {
            if (Log.isLoggable(f61121b, 3)) {
                Log.d(f61121b, "Failed to parse exif segment length, or exif segment not found");
            }
            return -1;
        }
        return l(new byte[j4], j4);
    }
}
