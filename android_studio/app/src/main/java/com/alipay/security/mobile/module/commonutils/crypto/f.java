package com.alipay.security.mobile.module.commonutils.crypto;

import java.io.OutputStream;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    protected final byte[] f7008a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: b  reason: collision with root package name */
    protected final byte[] f7009b = new byte[128];

    public f() {
        a();
    }

    private void a() {
        int i4 = 0;
        while (true) {
            byte[] bArr = this.f7008a;
            if (i4 >= bArr.length) {
                byte[] bArr2 = this.f7009b;
                bArr2[65] = bArr2[97];
                bArr2[66] = bArr2[98];
                bArr2[67] = bArr2[99];
                bArr2[68] = bArr2[100];
                bArr2[69] = bArr2[101];
                bArr2[70] = bArr2[102];
                return;
            }
            this.f7009b[bArr[i4]] = (byte) i4;
            i4++;
        }
    }

    private static boolean b(char c10) {
        return c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == ' ';
    }

    public int c(String str, OutputStream outputStream) {
        int length = str.length();
        while (length > 0 && b(str.charAt(length - 1))) {
            length--;
        }
        int i4 = 0;
        int i10 = 0;
        while (i4 < length) {
            while (i4 < length && b(str.charAt(i4))) {
                i4++;
            }
            int i11 = i4 + 1;
            byte b10 = this.f7009b[str.charAt(i4)];
            while (i11 < length && b(str.charAt(i11))) {
                i11++;
            }
            outputStream.write((b10 << 4) | this.f7009b[str.charAt(i11)]);
            i10++;
            i4 = i11 + 1;
        }
        return i10;
    }

    public int d(byte[] bArr, int i4, int i10, OutputStream outputStream) {
        int i11 = i10 + i4;
        while (i11 > i4 && b((char) bArr[i11 - 1])) {
            i11--;
        }
        int i12 = 0;
        while (i4 < i11) {
            while (i4 < i11 && b((char) bArr[i4])) {
                i4++;
            }
            int i13 = i4 + 1;
            byte b10 = this.f7009b[bArr[i4]];
            while (i13 < i11 && b((char) bArr[i13])) {
                i13++;
            }
            outputStream.write((b10 << 4) | this.f7009b[bArr[i13]]);
            i12++;
            i4 = i13 + 1;
        }
        return i12;
    }

    public int e(byte[] bArr, int i4, int i10, OutputStream outputStream) {
        for (int i11 = i4; i11 < i4 + i10; i11++) {
            int i12 = bArr[i11] & 255;
            outputStream.write(this.f7008a[i12 >>> 4]);
            outputStream.write(this.f7008a[i12 & 15]);
        }
        return i10 * 2;
    }
}
