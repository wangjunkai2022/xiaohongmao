package com.ta.utdid2.android.utils;

/* compiled from: IntUtils.java */
/* loaded from: classes3.dex */
public class e {
    public static byte[] a(int i4) {
        byte[] bArr = {(byte) ((r3 >> 8) % 256), (byte) (r3 % 256), (byte) (r3 % 256), (byte) (i4 % 256)};
        int i10 = i4 >> 8;
        int i11 = i10 >> 8;
        return bArr;
    }

    public static byte[] b(byte[] bArr, int i4) {
        if (bArr.length == 4) {
            bArr[3] = (byte) (i4 % 256);
            int i10 = i4 >> 8;
            bArr[2] = (byte) (i10 % 256);
            int i11 = i10 >> 8;
            bArr[1] = (byte) (i11 % 256);
            bArr[0] = (byte) ((i11 >> 8) % 256);
            return bArr;
        }
        return null;
    }
}
