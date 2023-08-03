package com.alipay.security.mobile.module.commonutils.crypto;

/* loaded from: classes.dex */
public class b {
    private b() {
    }

    public static boolean a(byte[] bArr, byte[] bArr2, int i4) {
        if (bArr == null || bArr2 == null) {
            return false;
        }
        if (i4 >= bArr.length) {
            return true;
        }
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            int i11 = i10 + i4;
            if (i11 + 1 > bArr.length) {
                break;
            }
            bArr[i11] = bArr2[i10];
        }
        return true;
    }

    public static boolean b(byte[] bArr, byte b10, int i4, int i10) {
        if (bArr != null && bArr.length >= i4 + i10) {
            for (int i11 = 0; i11 < i10; i11++) {
                bArr[i4 + i11] = b10;
            }
            return true;
        }
        return false;
    }

    public static boolean c(byte[] bArr, int i4, byte[] bArr2, int i10, int i11) {
        if (bArr == null || bArr2 == null || i11 <= 0 || bArr.length < i4 + i11 || bArr2.length < i10 + i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (bArr[i4 + i12] != bArr2[i10 + i12]) {
                return false;
            }
        }
        return true;
    }
}
