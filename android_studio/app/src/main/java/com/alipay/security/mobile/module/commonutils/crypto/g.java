package com.alipay.security.mobile.module.commonutils.crypto;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f7010a = e.b("7B726A5DDD72CBF8D1700FB6EB278AFD7559C40A3761E5A71614D0AC9461ED8EE9F6AAEB443CD648");

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f7011b = e.b("C9582A82777392CAA65AD7F5228150E3F966C09D6A00288B5C6E0CFB441E111B713B4E0822A8C830");

    /* renamed from: c  reason: collision with root package name */
    public static final int f7012c = 8;

    /* renamed from: d  reason: collision with root package name */
    public static final int f7013d = 20;

    private g() {
    }

    public static byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[20];
        if (b.b(bArr2, (byte) 0, 0, 20)) {
            byte[] bArr3 = new byte[20];
            if (b.b(bArr3, (byte) 0, 0, 20)) {
                byte[] b10 = c.b(bArr, f7010a);
                System.arraycopy(b10, 0, bArr2, 0, b10.length);
                byte[] b11 = c.b(bArr, f7011b);
                System.arraycopy(b11, 0, bArr3, 0, b11.length);
                int i4 = bArr2[19] & com.google.common.base.c.f32110q;
                int i10 = bArr3[19] & com.google.common.base.c.f32110q;
                return new byte[]{(byte) (bArr2[i4 + 3] & 255), (byte) (bArr2[i4 + 2] & 255), (byte) (bArr2[i4 + 1] & 255), (byte) (bArr2[i4] & Byte.MAX_VALUE), (byte) (bArr3[i10] & Byte.MAX_VALUE), (byte) (bArr3[i10 + 1] & 255), (byte) (bArr3[i10 + 2] & 255), (byte) (bArr3[i10 + 3] & 255)};
            }
            throw new IllegalStateException("failed to init hash2.");
        }
        throw new IllegalStateException("failed to init hash1.");
    }

    public static byte[] b(byte[] bArr, int i4) {
        byte[] a10 = a(bArr);
        if (a10 != null && i4 > 0) {
            if (i4 >= 8) {
                return a10;
            }
            byte[] bArr2 = new byte[i4];
            for (int i10 = 0; i10 < i4; i10++) {
                bArr2[i10] = a10[i10];
            }
            return bArr2;
        }
        return null;
    }
}
