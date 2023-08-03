package com.coremedia.iso;

import java.nio.ByteBuffer;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: IsoTypeWriter.java */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f10497a = false;

    public static void a(ByteBuffer byteBuffer, double d4) {
        int i4 = (int) (d4 * 1.073741824E9d);
        byteBuffer.put((byte) (((-16777216) & i4) >> 24));
        byteBuffer.put((byte) ((16711680 & i4) >> 16));
        byteBuffer.put((byte) ((65280 & i4) >> 8));
        byteBuffer.put((byte) (i4 & 255));
    }

    public static void b(ByteBuffer byteBuffer, double d4) {
        int i4 = (int) (d4 * 65536.0d);
        byteBuffer.put((byte) (((-16777216) & i4) >> 24));
        byteBuffer.put((byte) ((16711680 & i4) >> 16));
        byteBuffer.put((byte) ((65280 & i4) >> 8));
        byteBuffer.put((byte) (i4 & 255));
    }

    public static void c(ByteBuffer byteBuffer, double d4) {
        short s9 = (short) (d4 * 256.0d);
        byteBuffer.put((byte) ((65280 & s9) >> 8));
        byteBuffer.put((byte) (s9 & 255));
    }

    public static void d(ByteBuffer byteBuffer, String str) {
        if (str.getBytes().length == 3) {
            int i4 = 0;
            for (int i10 = 0; i10 < 3; i10++) {
                i4 += (str.getBytes()[i10] - 96) << ((2 - i10) * 5);
            }
            f(byteBuffer, i4);
            return;
        }
        throw new IllegalArgumentException("\"" + str + "\" language string isn't exactly 3 characters long!");
    }

    public static void e(ByteBuffer byteBuffer, String str) {
        byte[] b10 = l.b(str);
        m(byteBuffer, b10.length);
        byteBuffer.put(b10);
    }

    public static void f(ByteBuffer byteBuffer, int i4) {
        int i10 = i4 & 65535;
        m(byteBuffer, i10 >> 8);
        m(byteBuffer, i10 & 255);
    }

    public static void g(ByteBuffer byteBuffer, int i4) {
        int i10 = i4 & 65535;
        m(byteBuffer, i10 & 255);
        m(byteBuffer, i10 >> 8);
    }

    public static void h(ByteBuffer byteBuffer, int i4) {
        int i10 = i4 & 16777215;
        f(byteBuffer, i10 >> 8);
        m(byteBuffer, i10);
    }

    public static void i(ByteBuffer byteBuffer, long j4) {
        byteBuffer.putInt((int) j4);
    }

    public static void j(ByteBuffer byteBuffer, long j4) {
        g(byteBuffer, ((int) j4) & 65535);
        g(byteBuffer, (int) ((j4 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    public static void k(ByteBuffer byteBuffer, long j4) {
        long j10 = j4 & 281474976710655L;
        f(byteBuffer, (int) (j10 >> 32));
        i(byteBuffer, j10 & 4294967295L);
    }

    public static void l(ByteBuffer byteBuffer, long j4) {
        byteBuffer.putLong(j4);
    }

    public static void m(ByteBuffer byteBuffer, int i4) {
        byteBuffer.put((byte) (i4 & 255));
    }

    public static void n(ByteBuffer byteBuffer, String str) {
        byteBuffer.put(l.b(str));
        m(byteBuffer, 0);
    }

    public static void o(ByteBuffer byteBuffer, String str) {
        byteBuffer.put(l.b(str));
        m(byteBuffer, 0);
    }
}
