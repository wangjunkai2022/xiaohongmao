package com.coremedia.iso;

import java.nio.ByteBuffer;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: IsoTypeWriterVariable.java */
/* loaded from: classes.dex */
public final class j {
    public static void a(long j4, ByteBuffer byteBuffer, int i4) {
        if (i4 == 1) {
            i.m(byteBuffer, (int) (j4 & 255));
        } else if (i4 == 2) {
            i.f(byteBuffer, (int) (j4 & WebSocketProtocol.PAYLOAD_SHORT_MAX));
        } else if (i4 == 3) {
            i.h(byteBuffer, (int) (j4 & 16777215));
        } else if (i4 == 4) {
            i.i(byteBuffer, j4);
        } else if (i4 == 8) {
            i.l(byteBuffer, j4);
        } else {
            throw new RuntimeException("I don't know how to read " + i4 + " bytes");
        }
    }
}
