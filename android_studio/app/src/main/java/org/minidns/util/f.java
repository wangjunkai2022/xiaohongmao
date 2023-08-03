package org.minidns.util;

/* compiled from: Hex.java */
/* loaded from: classes5.dex */
public class f {
    public static StringBuilder a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        int length = bArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            sb.append(String.format("%02X ", Byte.valueOf(bArr[i4])));
        }
        return sb;
    }
}
