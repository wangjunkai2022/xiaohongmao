package org.bouncycastle.pqc.crypto.gmss.util;

import java.io.PrintStream;

/* loaded from: classes5.dex */
public class GMSSUtil {
    public int bytesToIntLittleEndian(byte[] bArr) {
        return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
    }

    public int bytesToIntLittleEndian(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        int i12 = (bArr[i4] & 255) | ((bArr[i10] & 255) << 8);
        return ((bArr[i11 + 1] & 255) << 24) | i12 | ((bArr[i11] & 255) << 16);
    }

    public byte[] concatenateArray(byte[][] bArr) {
        byte[] bArr2 = new byte[bArr.length * bArr[0].length];
        int i4 = 0;
        for (int i10 = 0; i10 < bArr.length; i10++) {
            System.arraycopy(bArr[i10], 0, bArr2, i4, bArr[i10].length);
            i4 += bArr[i10].length;
        }
        return bArr2;
    }

    public int getLog(int i4) {
        int i10 = 1;
        int i11 = 2;
        while (i11 < i4) {
            i11 <<= 1;
            i10++;
        }
        return i10;
    }

    public byte[] intToBytesLittleEndian(int i4) {
        return new byte[]{(byte) (i4 & 255), (byte) ((i4 >> 8) & 255), (byte) ((i4 >> 16) & 255), (byte) ((i4 >> 24) & 255)};
    }

    public void printArray(String str, byte[] bArr) {
        System.out.println(str);
        int i4 = 0;
        for (int i10 = 0; i10 < bArr.length; i10++) {
            PrintStream printStream = System.out;
            printStream.println(i4 + "; " + ((int) bArr[i10]));
            i4++;
        }
    }

    public void printArray(String str, byte[][] bArr) {
        System.out.println(str);
        int i4 = 0;
        for (int i10 = 0; i10 < bArr.length; i10++) {
            for (int i11 = 0; i11 < bArr[0].length; i11++) {
                PrintStream printStream = System.out;
                printStream.println(i4 + "; " + ((int) bArr[i10][i11]));
                i4++;
            }
        }
    }

    public boolean testPowerOfTwo(int i4) {
        int i10 = 1;
        while (i10 < i4) {
            i10 <<= 1;
        }
        return i4 == i10;
    }
}
