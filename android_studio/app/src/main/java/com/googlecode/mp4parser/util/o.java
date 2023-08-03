package com.googlecode.mp4parser.util;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;

/* compiled from: UUIDConverter.java */
/* loaded from: classes2.dex */
public class o {
    public static UUID a(byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.order(ByteOrder.BIG_ENDIAN);
        return new UUID(wrap.getLong(), wrap.getLong());
    }

    public static byte[] b(UUID uuid) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        byte[] bArr = new byte[16];
        for (int i4 = 0; i4 < 8; i4++) {
            bArr[i4] = (byte) (mostSignificantBits >>> ((7 - i4) * 8));
        }
        for (int i10 = 8; i10 < 16; i10++) {
            bArr[i10] = (byte) (leastSignificantBits >>> ((7 - i10) * 8));
        }
        return bArr;
    }
}
