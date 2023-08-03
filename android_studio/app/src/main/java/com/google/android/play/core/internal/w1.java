package com.google.android.play.core.internal;

import android.util.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class w1 {
    public static X509Certificate[][] a(String str) throws zzf, SecurityException, IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair c10 = x1.c(randomAccessFile);
            if (c10 != null) {
                ByteBuffer byteBuffer = (ByteBuffer) c10.first;
                long longValue = ((Long) c10.second).longValue();
                long j4 = (-20) + longValue;
                if (j4 >= 0) {
                    randomAccessFile.seek(j4);
                    if (randomAccessFile.readInt() == 1347094023) {
                        throw new zzf("ZIP64 APK not supported");
                    }
                }
                long a10 = x1.a(byteBuffer);
                if (a10 < longValue) {
                    if (x1.b(byteBuffer) + a10 == longValue) {
                        if (a10 >= 32) {
                            ByteBuffer allocate = ByteBuffer.allocate(24);
                            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                            allocate.order(byteOrder);
                            randomAccessFile.seek(a10 - allocate.capacity());
                            randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                            if (allocate.getLong(8) == 2334950737559900225L && allocate.getLong(16) == 3617552046287187010L) {
                                int i4 = 0;
                                long j10 = allocate.getLong(0);
                                if (j10 < allocate.capacity() || j10 > 2147483639) {
                                    StringBuilder sb = new StringBuilder(57);
                                    sb.append("APK Signing Block size out of range: ");
                                    sb.append(j10);
                                    throw new zzf(sb.toString());
                                }
                                int i10 = (int) (8 + j10);
                                long j11 = a10 - i10;
                                if (j11 >= 0) {
                                    ByteBuffer allocate2 = ByteBuffer.allocate(i10);
                                    allocate2.order(byteOrder);
                                    randomAccessFile.seek(j11);
                                    randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                                    long j12 = allocate2.getLong(0);
                                    if (j12 == j10) {
                                        Pair create = Pair.create(allocate2, Long.valueOf(j11));
                                        ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
                                        long longValue2 = ((Long) create.second).longValue();
                                        if (byteBuffer2.order() == byteOrder) {
                                            int capacity = byteBuffer2.capacity() - 24;
                                            if (capacity >= 8) {
                                                int capacity2 = byteBuffer2.capacity();
                                                if (capacity <= byteBuffer2.capacity()) {
                                                    int limit = byteBuffer2.limit();
                                                    int position = byteBuffer2.position();
                                                    byteBuffer2.position(0);
                                                    byteBuffer2.limit(capacity);
                                                    byteBuffer2.position(8);
                                                    ByteBuffer slice = byteBuffer2.slice();
                                                    slice.order(byteBuffer2.order());
                                                    byteBuffer2.position(0);
                                                    byteBuffer2.limit(limit);
                                                    byteBuffer2.position(position);
                                                    while (slice.hasRemaining()) {
                                                        i4++;
                                                        if (slice.remaining() >= 8) {
                                                            long j13 = slice.getLong();
                                                            if (j13 >= 4 && j13 <= 2147483647L) {
                                                                int i11 = (int) j13;
                                                                int position2 = slice.position() + i11;
                                                                if (i11 <= slice.remaining()) {
                                                                    if (slice.getInt() == 1896449818) {
                                                                        X509Certificate[][] l10 = l(randomAccessFile.getChannel(), new t1(e(slice, i11 - 4), longValue2, a10, longValue, byteBuffer, null));
                                                                        randomAccessFile.close();
                                                                        return l10;
                                                                    }
                                                                    slice.position(position2);
                                                                } else {
                                                                    int remaining = slice.remaining();
                                                                    StringBuilder sb2 = new StringBuilder(91);
                                                                    sb2.append("APK Signing Block entry #");
                                                                    sb2.append(i4);
                                                                    sb2.append(" size out of range: ");
                                                                    sb2.append(i11);
                                                                    sb2.append(", available: ");
                                                                    sb2.append(remaining);
                                                                    throw new zzf(sb2.toString());
                                                                }
                                                            } else {
                                                                StringBuilder sb3 = new StringBuilder(76);
                                                                sb3.append("APK Signing Block entry #");
                                                                sb3.append(i4);
                                                                sb3.append(" size out of range: ");
                                                                sb3.append(j13);
                                                                throw new zzf(sb3.toString());
                                                            }
                                                        } else {
                                                            StringBuilder sb4 = new StringBuilder(70);
                                                            sb4.append("Insufficient data to read size of APK Signing Block entry #");
                                                            sb4.append(i4);
                                                            throw new zzf(sb4.toString());
                                                        }
                                                    }
                                                    throw new zzf("No APK Signature Scheme v2 block in APK Signing Block");
                                                }
                                                StringBuilder sb5 = new StringBuilder(41);
                                                sb5.append("end > capacity: ");
                                                sb5.append(capacity);
                                                sb5.append(" > ");
                                                sb5.append(capacity2);
                                                throw new IllegalArgumentException(sb5.toString());
                                            }
                                            StringBuilder sb6 = new StringBuilder(38);
                                            sb6.append("end < start: ");
                                            sb6.append(capacity);
                                            sb6.append(" < ");
                                            sb6.append(8);
                                            throw new IllegalArgumentException(sb6.toString());
                                        }
                                        throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                                    }
                                    StringBuilder sb7 = new StringBuilder(103);
                                    sb7.append("APK Signing Block sizes in header and footer do not match: ");
                                    sb7.append(j12);
                                    sb7.append(" vs ");
                                    sb7.append(j10);
                                    throw new zzf(sb7.toString());
                                }
                                StringBuilder sb8 = new StringBuilder(59);
                                sb8.append("APK Signing Block offset out of range: ");
                                sb8.append(j11);
                                throw new zzf(sb8.toString());
                            }
                            throw new zzf("No APK Signing Block before ZIP Central Directory");
                        }
                        StringBuilder sb9 = new StringBuilder(87);
                        sb9.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                        sb9.append(a10);
                        throw new zzf(sb9.toString());
                    }
                    throw new zzf("ZIP Central Directory is not immediately followed by End of Central Directory");
                }
                StringBuilder sb10 = new StringBuilder(122);
                sb10.append("ZIP Central Directory offset out of range: ");
                sb10.append(a10);
                sb10.append(". ZIP End of Central Directory offset: ");
                sb10.append(longValue);
                throw new zzf(sb10.toString());
            }
            long length = randomAccessFile.length();
            StringBuilder sb11 = new StringBuilder(102);
            sb11.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
            sb11.append(length);
            sb11.append(" bytes");
            throw new zzf(sb11.toString());
        } finally {
            try {
                randomAccessFile.close();
            } catch (IOException unused) {
            }
        }
    }

    private static int b(int i4) {
        if (i4 != 1) {
            if (i4 == 2) {
                return 64;
            }
            StringBuilder sb = new StringBuilder(44);
            sb.append("Unknown content digest algorthm: ");
            sb.append(i4);
            throw new IllegalArgumentException(sb.toString());
        }
        return 32;
    }

    private static int c(int i4) {
        if (i4 != 513) {
            if (i4 != 514) {
                if (i4 != 769) {
                    switch (i4) {
                        case 257:
                        case 259:
                            return 1;
                        case 258:
                        case 260:
                            return 2;
                        default:
                            String valueOf = String.valueOf(Long.toHexString(i4));
                            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf) : new String("Unknown signature algorithm: 0x"));
                    }
                }
                return 1;
            }
            return 2;
        }
        return 1;
    }

    private static String d(int i4) {
        if (i4 != 1) {
            if (i4 == 2) {
                return "SHA-512";
            }
            StringBuilder sb = new StringBuilder(44);
            sb.append("Unknown content digest algorthm: ");
            sb.append(i4);
            throw new IllegalArgumentException(sb.toString());
        }
        return "SHA-256";
    }

    private static ByteBuffer e(ByteBuffer byteBuffer, int i4) throws BufferUnderflowException {
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        int i10 = i4 + position;
        if (i10 >= position && i10 <= limit) {
            byteBuffer.limit(i10);
            try {
                ByteBuffer slice = byteBuffer.slice();
                slice.order(byteBuffer.order());
                byteBuffer.position(i10);
                return slice;
            } finally {
                byteBuffer.limit(limit);
            }
        }
        throw new BufferUnderflowException();
    }

    private static ByteBuffer f(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            int i4 = byteBuffer.getInt();
            if (i4 >= 0) {
                if (i4 <= byteBuffer.remaining()) {
                    return e(byteBuffer, i4);
                }
                int remaining = byteBuffer.remaining();
                StringBuilder sb = new StringBuilder(101);
                sb.append("Length-prefixed field longer than remaining buffer. Field length: ");
                sb.append(i4);
                sb.append(", remaining: ");
                sb.append(remaining);
                throw new IOException(sb.toString());
            }
            throw new IllegalArgumentException("Negative length");
        }
        int remaining2 = byteBuffer.remaining();
        StringBuilder sb2 = new StringBuilder(93);
        sb2.append("Remaining buffer too short to contain length of length-prefixed field. Remaining: ");
        sb2.append(remaining2);
        throw new IOException(sb2.toString());
    }

    private static void g(int i4, byte[] bArr, int i10) {
        bArr[1] = (byte) (i4 & 255);
        bArr[2] = (byte) ((i4 >>> 8) & 255);
        bArr[3] = (byte) ((i4 >>> 16) & 255);
        bArr[4] = (byte) (i4 >> 24);
    }

    private static void h(Map map, FileChannel fileChannel, long j4, long j10, long j11, ByteBuffer byteBuffer) throws SecurityException {
        if (!map.isEmpty()) {
            s1 s1Var = new s1(fileChannel, 0L, j4);
            s1 s1Var2 = new s1(fileChannel, j10, j11 - j10);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            x1.d(duplicate, j4);
            a0 a0Var = new a0(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i4 = 0;
            for (Integer num : map.keySet()) {
                iArr[i4] = num.intValue();
                i4++;
            }
            try {
                byte[][] k10 = k(iArr, new z0[]{s1Var, s1Var2, a0Var});
                for (int i10 = 0; i10 < size; i10++) {
                    int i11 = iArr[i10];
                    if (!MessageDigest.isEqual((byte[]) map.get(Integer.valueOf(i11)), k10[i10])) {
                        throw new SecurityException(d(i11).concat(" digest of contents did not verify"));
                    }
                }
                return;
            } catch (DigestException e4) {
                throw new SecurityException("Failed to compute digest(s) of contents", e4);
            }
        }
        throw new SecurityException("No digests provided");
    }

    private static byte[] i(ByteBuffer byteBuffer) throws IOException {
        int i4 = byteBuffer.getInt();
        if (i4 >= 0) {
            if (i4 <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i4];
                byteBuffer.get(bArr);
                return bArr;
            }
            int remaining = byteBuffer.remaining();
            StringBuilder sb = new StringBuilder(90);
            sb.append("Underflow while reading length-prefixed value. Length: ");
            sb.append(i4);
            sb.append(", available: ");
            sb.append(remaining);
            throw new IOException(sb.toString());
        }
        throw new IOException("Negative length");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
        r11 = c(r5);
        r12 = c(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
        if (r11 == 1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r12 == 1) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.security.cert.X509Certificate[] j(java.nio.ByteBuffer r22, java.util.Map r23, java.security.cert.CertificateFactory r24) throws java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 728
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.w1.j(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    private static byte[][] k(int[] iArr, z0[] z0VarArr) throws DigestException {
        long j4;
        int i4;
        int length;
        long j10 = 0;
        int i10 = 0;
        long j11 = 0;
        int i11 = 0;
        while (true) {
            j4 = 1048576;
            if (i11 >= 3) {
                break;
            }
            j11 += (z0VarArr[i11].zza() + 1048575) / 1048576;
            i11++;
        }
        if (j11 < 2097151) {
            int i12 = (int) j11;
            byte[][] bArr = new byte[iArr.length];
            int i13 = 0;
            while (true) {
                length = iArr.length;
                if (i13 >= length) {
                    break;
                }
                byte[] bArr2 = new byte[(b(iArr[i13]) * i12) + 5];
                bArr2[0] = 90;
                g(i12, bArr2, 1);
                bArr[i13] = bArr2;
                i13++;
            }
            byte[] bArr3 = new byte[5];
            bArr3[0] = -91;
            MessageDigest[] messageDigestArr = new MessageDigest[length];
            for (int i14 = 0; i14 < iArr.length; i14++) {
                String d4 = d(iArr[i14]);
                try {
                    messageDigestArr[i14] = MessageDigest.getInstance(d4);
                } catch (NoSuchAlgorithmException e4) {
                    throw new RuntimeException(d4.concat(" digest not supported"), e4);
                }
            }
            int i15 = 0;
            int i16 = 0;
            for (i4 = 3; i15 < i4; i4 = 3) {
                z0 z0Var = z0VarArr[i15];
                long j12 = j10;
                long zza = z0Var.zza();
                while (zza > j10) {
                    int min = (int) Math.min(zza, j4);
                    g(min, bArr3, 1);
                    for (int i17 = 0; i17 < length; i17++) {
                        messageDigestArr[i17].update(bArr3);
                    }
                    long j13 = j12;
                    try {
                        z0Var.a(messageDigestArr, j13, min);
                        byte[] bArr4 = bArr3;
                        int i18 = 0;
                        while (i18 < iArr.length) {
                            int i19 = iArr[i18];
                            z0 z0Var2 = z0Var;
                            byte[] bArr5 = bArr[i18];
                            int b10 = b(i19);
                            int i20 = length;
                            MessageDigest messageDigest = messageDigestArr[i18];
                            MessageDigest[] messageDigestArr2 = messageDigestArr;
                            int digest = messageDigest.digest(bArr5, (i16 * b10) + 5, b10);
                            if (digest != b10) {
                                String algorithm = messageDigest.getAlgorithm();
                                StringBuilder sb = new StringBuilder(String.valueOf(algorithm).length() + 46);
                                sb.append("Unexpected output size of ");
                                sb.append(algorithm);
                                sb.append(" digest: ");
                                sb.append(digest);
                                throw new RuntimeException(sb.toString());
                            }
                            i18++;
                            z0Var = z0Var2;
                            length = i20;
                            messageDigestArr = messageDigestArr2;
                        }
                        MessageDigest[] messageDigestArr3 = messageDigestArr;
                        long j14 = min;
                        long j15 = j13 + j14;
                        zza -= j14;
                        i16++;
                        bArr3 = bArr4;
                        j10 = 0;
                        j12 = j15;
                        messageDigestArr = messageDigestArr3;
                        j4 = 1048576;
                    } catch (IOException e10) {
                        StringBuilder sb2 = new StringBuilder(59);
                        sb2.append("Failed to digest chunk #");
                        sb2.append(i16);
                        sb2.append(" of section #");
                        sb2.append(i10);
                        throw new DigestException(sb2.toString(), e10);
                    }
                }
                i10++;
                i15++;
                j10 = 0;
                j4 = 1048576;
            }
            byte[][] bArr6 = new byte[iArr.length];
            for (int i21 = 0; i21 < iArr.length; i21++) {
                int i22 = iArr[i21];
                byte[] bArr7 = bArr[i21];
                String d10 = d(i22);
                try {
                    bArr6[i21] = MessageDigest.getInstance(d10).digest(bArr7);
                } catch (NoSuchAlgorithmException e11) {
                    throw new RuntimeException(d10.concat(" digest not supported"), e11);
                }
            }
            return bArr6;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Too many chunks: ");
        sb3.append(j11);
        throw new DigestException(sb3.toString());
    }

    private static X509Certificate[][] l(FileChannel fileChannel, t1 t1Var) throws SecurityException {
        ByteBuffer byteBuffer;
        long j4;
        long j10;
        long j11;
        ByteBuffer byteBuffer2;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                byteBuffer = t1Var.f31760a;
                ByteBuffer f10 = f(byteBuffer);
                int i4 = 0;
                while (f10.hasRemaining()) {
                    i4++;
                    try {
                        arrayList.add(j(f(f10), hashMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e4) {
                        StringBuilder sb = new StringBuilder(48);
                        sb.append("Failed to parse/verify signer #");
                        sb.append(i4);
                        sb.append(" block");
                        throw new SecurityException(sb.toString(), e4);
                    }
                }
                if (i4 > 0) {
                    if (!hashMap.isEmpty()) {
                        j4 = t1Var.f31761b;
                        j10 = t1Var.f31762c;
                        j11 = t1Var.f31763d;
                        byteBuffer2 = t1Var.f31764e;
                        h(hashMap, fileChannel, j4, j10, j11, byteBuffer2);
                        return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                    }
                    throw new SecurityException("No content digests found");
                }
                throw new SecurityException("No signers found");
            } catch (IOException e10) {
                throw new SecurityException("Failed to read list of signers", e10);
            }
        } catch (CertificateException e11) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e11);
        }
    }
}
