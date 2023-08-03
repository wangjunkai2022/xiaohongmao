package com.facebook.imageutils;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamProcessor.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
class d {
    d() {
    }

    public static int a(InputStream is, int numBytes, boolean isLittleEndian) throws IOException {
        int i4;
        int i10 = 0;
        for (int i11 = 0; i11 < numBytes; i11++) {
            int read = is.read();
            if (read == -1) {
                throw new IOException("no more bytes");
            }
            if (isLittleEndian) {
                i4 = (read & 255) << (i11 * 8);
            } else {
                i10 <<= 8;
                i4 = read & 255;
            }
            i10 |= i4;
        }
        return i10;
    }
}
