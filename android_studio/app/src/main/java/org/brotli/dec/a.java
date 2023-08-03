package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: BitReader.java */
/* loaded from: classes5.dex */
final class a {

    /* renamed from: j  reason: collision with root package name */
    private static final int f91583j = 1024;

    /* renamed from: k  reason: collision with root package name */
    private static final int f91584k = 16;

    /* renamed from: l  reason: collision with root package name */
    private static final int f91585l = 1040;

    /* renamed from: m  reason: collision with root package name */
    private static final int f91586m = 4096;

    /* renamed from: n  reason: collision with root package name */
    private static final int f91587n = 4160;

    /* renamed from: d  reason: collision with root package name */
    private InputStream f91591d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f91592e;

    /* renamed from: f  reason: collision with root package name */
    long f91593f;

    /* renamed from: g  reason: collision with root package name */
    int f91594g;

    /* renamed from: h  reason: collision with root package name */
    private int f91595h;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f91588a = new byte[f91587n];

    /* renamed from: b  reason: collision with root package name */
    private final int[] f91589b = new int[f91585l];

    /* renamed from: c  reason: collision with root package name */
    private final i f91590c = new i();

    /* renamed from: i  reason: collision with root package name */
    private int f91596i = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(a aVar, boolean z9) {
        if (aVar.f91592e) {
            int i4 = ((aVar.f91595h << 2) + ((aVar.f91594g + 7) >> 3)) - 8;
            int i10 = aVar.f91596i;
            if (i4 > i10) {
                throw new c("Read after end");
            }
            if (z9 && i4 != i10) {
                throw new c("Unused bytes after end");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(a aVar) throws IOException {
        InputStream inputStream = aVar.f91591d;
        aVar.f91591d = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(a aVar, byte[] bArr, int i4, int i10) {
        if ((aVar.f91594g & 7) != 0) {
            throw new c("Unaligned copyBytes");
        }
        while (true) {
            int i11 = aVar.f91594g;
            if (i11 == 64 || i10 == 0) {
                break;
            }
            bArr[i4] = (byte) (aVar.f91593f >>> i11);
            aVar.f91594g = i11 + 8;
            i10--;
            i4++;
        }
        if (i10 == 0) {
            return;
        }
        int min = Math.min(f(aVar), i10 >> 2);
        if (min > 0) {
            int i12 = min << 2;
            System.arraycopy(aVar.f91588a, aVar.f91595h << 2, bArr, i4, i12);
            i4 += i12;
            i10 -= i12;
            aVar.f91595h += min;
        }
        if (i10 == 0) {
            return;
        }
        if (f(aVar) <= 0) {
            while (i10 > 0) {
                try {
                    int read = aVar.f91591d.read(bArr, i4, i10);
                    if (read == -1) {
                        throw new c("Unexpected end of input");
                    }
                    i4 += read;
                    i10 -= read;
                } catch (IOException e4) {
                    throw new c("Failed to read input", e4);
                }
            }
            return;
        }
        d(aVar);
        while (i10 != 0) {
            long j4 = aVar.f91593f;
            int i13 = aVar.f91594g;
            bArr[i4] = (byte) (j4 >>> i13);
            aVar.f91594g = i13 + 8;
            i10--;
            i4++;
        }
        a(aVar, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(a aVar) {
        int i4 = aVar.f91594g;
        if (i4 >= 32) {
            int[] iArr = aVar.f91589b;
            int i10 = aVar.f91595h;
            aVar.f91595h = i10 + 1;
            aVar.f91593f = (iArr[i10] << 32) | (aVar.f91593f >>> 32);
            aVar.f91594g = i4 - 32;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(a aVar, InputStream inputStream) {
        if (aVar.f91591d == null) {
            i.b(aVar.f91590c, aVar.f91588a, aVar.f91589b);
            aVar.f91591d = inputStream;
            aVar.f91593f = 0L;
            aVar.f91594g = 64;
            aVar.f91595h = 1024;
            aVar.f91592e = false;
            h(aVar);
            return;
        }
        throw new IllegalStateException("Bit reader already has associated input stream");
    }

    static int f(a aVar) {
        return (aVar.f91592e ? (aVar.f91596i + 3) >> 2 : 1024) - aVar.f91595h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(a aVar) {
        int i4 = (64 - aVar.f91594g) & 7;
        if (i4 != 0 && i(aVar, i4) != 0) {
            throw new c("Corrupted padding bits");
        }
    }

    private static void h(a aVar) {
        j(aVar);
        a(aVar, false);
        d(aVar);
        d(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(a aVar, int i4) {
        d(aVar);
        long j4 = aVar.f91593f;
        int i10 = aVar.f91594g;
        int i11 = ((int) (j4 >>> i10)) & ((1 << i4) - 1);
        aVar.f91594g = i10 + i4;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
        r4.f91592e = true;
        r4.f91596i = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003c, code lost:
        r1 = r1 + 3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void j(org.brotli.dec.a r4) {
        /*
            int r0 = r4.f91595h
            r1 = 1015(0x3f7, float:1.422E-42)
            if (r0 > r1) goto L7
            return
        L7:
            boolean r1 = r4.f91592e
            if (r1 == 0) goto L1b
            int r4 = f(r4)
            r0 = -2
            if (r4 < r0) goto L13
            return
        L13:
            org.brotli.dec.c r4 = new org.brotli.dec.c
            java.lang.String r0 = "No more input"
            r4.<init>(r0)
            throw r4
        L1b:
            int r0 = r0 << 2
            int r1 = 4096 - r0
            byte[] r2 = r4.f91588a
            r3 = 0
            java.lang.System.arraycopy(r2, r0, r2, r3, r1)
            r4.f91595h = r3
        L27:
            r0 = 4096(0x1000, float:5.74E-42)
            if (r1 >= r0) goto L4a
            java.io.InputStream r0 = r4.f91591d     // Catch: java.io.IOException -> L41
            byte[] r2 = r4.f91588a     // Catch: java.io.IOException -> L41
            int r3 = 4096 - r1
            int r0 = r0.read(r2, r1, r3)     // Catch: java.io.IOException -> L41
            if (r0 > 0) goto L3f
            r0 = 1
            r4.f91592e = r0     // Catch: java.io.IOException -> L41
            r4.f91596i = r1     // Catch: java.io.IOException -> L41
            int r1 = r1 + 3
            goto L4a
        L3f:
            int r1 = r1 + r0
            goto L27
        L41:
            r4 = move-exception
            org.brotli.dec.c r0 = new org.brotli.dec.c
            java.lang.String r1 = "Failed to read input"
            r0.<init>(r1, r4)
            throw r0
        L4a:
            org.brotli.dec.i r4 = r4.f91590c
            int r0 = r1 >> 2
            org.brotli.dec.i.a(r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.brotli.dec.a.j(org.brotli.dec.a):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(a aVar) {
        if (aVar.f91594g == 64) {
            h(aVar);
        }
    }
}
