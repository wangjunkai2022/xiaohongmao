package org.minidns.util;

/* compiled from: Base32.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f93033a = "0123456789ABCDEFGHIJKLMNOPQRSTUV";

    /* renamed from: b  reason: collision with root package name */
    private static final String f93034b = "======";

    private a() {
    }

    public static String a(byte[] bArr) {
        int length = ((int) (8.0d - ((bArr.length % 5) * 1.6d))) % 8;
        byte[] bArr2 = new byte[bArr.length + length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < bArr.length; i4 += 5) {
            long j4 = ((bArr2[i4] & 255) << 32) + ((bArr2[i4 + 1] & 255) << 24) + ((bArr2[i4 + 2] & 255) << 16) + ((bArr2[i4 + 3] & 255) << 8) + (bArr2[i4 + 4] & 255);
            sb.append(f93033a.charAt((int) ((j4 >> 35) & 31)));
            sb.append(f93033a.charAt((int) ((j4 >> 30) & 31)));
            sb.append(f93033a.charAt((int) ((j4 >> 25) & 31)));
            sb.append(f93033a.charAt((int) ((j4 >> 20) & 31)));
            sb.append(f93033a.charAt((int) ((j4 >> 15) & 31)));
            sb.append(f93033a.charAt((int) ((j4 >> 10) & 31)));
            sb.append(f93033a.charAt((int) ((j4 >> 5) & 31)));
            sb.append(f93033a.charAt((int) (j4 & 31)));
        }
        return sb.substring(0, sb.length() - length) + f93034b.substring(0, length);
    }
}
