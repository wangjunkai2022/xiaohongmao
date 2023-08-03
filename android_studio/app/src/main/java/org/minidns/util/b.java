package org.minidns.util;

/* compiled from: Base64.java */
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f93035a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    /* renamed from: b  reason: collision with root package name */
    private static final String f93036b = "==";

    private b() {
    }

    public static String a(byte[] bArr) {
        int length = (3 - (bArr.length % 3)) % 3;
        byte[] bArr2 = new byte[bArr.length + length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < bArr.length; i4 += 3) {
            int i10 = ((bArr2[i4] & 255) << 16) + ((bArr2[i4 + 1] & 255) << 8) + (bArr2[i4 + 2] & 255);
            sb.append(f93035a.charAt((i10 >> 18) & 63));
            sb.append(f93035a.charAt((i10 >> 12) & 63));
            sb.append(f93035a.charAt((i10 >> 6) & 63));
            sb.append(f93035a.charAt(i10 & 63));
        }
        return sb.substring(0, sb.length() - length) + f93036b.substring(0, length);
    }
}
