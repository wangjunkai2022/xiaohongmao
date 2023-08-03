package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.zip.ZipException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class b1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static a a(String str, String str2) throws IOException {
        Long l10;
        int a10;
        com.google.android.play.core.internal.i1.b(str != null, "Attempted to get file location from a null apk path.");
        com.google.android.play.core.internal.i1.b(str2 != null, String.format("Attempted to get file location in apk %s with a null file path.", str));
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        byte[] bArr = new byte[22];
        randomAccessFile.seek(randomAccessFile.length() - 22);
        randomAccessFile.readFully(bArr);
        a1 b10 = z0.b(bArr, 0) == 1347093766 ? b(bArr) : null;
        byte b11 = 5;
        if (b10 == null) {
            long length = randomAccessFile.length() - 22;
            long j4 = (-65536) + length;
            if (j4 < 0) {
                j4 = 0;
            }
            int min = (int) Math.min(1024L, randomAccessFile.length());
            byte[] bArr2 = new byte[min];
            byte[] bArr3 = new byte[22];
            loop0: while (true) {
                long max = Math.max(3 + (length - min), j4);
                randomAccessFile.seek(max);
                randomAccessFile.readFully(bArr2);
                for (int i4 = min - 4; i4 >= 0; i4 -= 4) {
                    byte b12 = bArr2[i4];
                    int i10 = b12 != b11 ? b12 != 6 ? b12 != 75 ? b12 != 80 ? -1 : 0 : 1 : 3 : 2;
                    if (i10 >= 0 && i4 >= i10 && z0.b(bArr2, i4 - i10) == 1347093766) {
                        randomAccessFile.seek((max + i4) - i10);
                        randomAccessFile.readFully(bArr3);
                        b10 = b(bArr3);
                        break loop0;
                    }
                    b11 = 5;
                }
                if (max == j4) {
                    throw new ZipException(String.format("End Of Central Directory signature not found in APK %s", str));
                }
                length = max;
            }
        }
        long j10 = b10.f31237a;
        byte[] bytes = str2.getBytes("UTF-8");
        byte[] bArr4 = new byte[46];
        byte[] bArr5 = new byte[str2.length()];
        int i11 = 0;
        while (true) {
            if (i11 >= b10.f31238b) {
                l10 = null;
                break;
            }
            randomAccessFile.seek(j10);
            randomAccessFile.readFully(bArr4);
            int b13 = z0.b(bArr4, 0);
            if (b13 == 1347092738) {
                randomAccessFile.seek(j10 + 28);
                if (z0.a(bArr4, 28) == str2.length()) {
                    randomAccessFile.seek(46 + j10);
                    randomAccessFile.read(bArr5);
                    if (Arrays.equals(bArr5, bytes)) {
                        l10 = Long.valueOf(z0.c(bArr4, 42));
                        break;
                    }
                }
                j10 += a10 + 46 + z0.a(bArr4, 30) + z0.a(bArr4, 32);
                i11++;
            } else {
                throw new ZipException(String.format("Missing central directory file header signature when looking for file %s in APK %s. Read %d entries out of %d. Found %d instead of the header signature %d.", str2, str, Integer.valueOf(i11), Integer.valueOf(b10.f31238b), Integer.valueOf(b13), 1347092738));
            }
        }
        if (l10 == null) {
            return null;
        }
        long longValue = l10.longValue();
        byte[] bArr6 = new byte[8];
        randomAccessFile.seek(22 + longValue);
        randomAccessFile.readFully(bArr6);
        return new t0(str, longValue + 30 + z0.a(bArr6, 4) + z0.a(bArr6, 6), z0.c(bArr6, 0));
    }

    private static a1 b(byte[] bArr) {
        int a10 = z0.a(bArr, 10);
        return new a1(z0.c(bArr, 16), z0.c(bArr, 12), a10);
    }
}
