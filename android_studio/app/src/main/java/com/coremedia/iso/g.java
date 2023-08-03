package com.coremedia.iso;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* compiled from: IsoTypeReader.java */
/* loaded from: classes.dex */
public final class g {
    public static int a(byte b10) {
        return b10 < 0 ? b10 + 256 : b10;
    }

    public static String b(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static double c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((((0 | ((bArr[0] << com.google.common.base.c.B) & ViewCompat.MEASURED_STATE_MASK)) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK)) | (bArr[3] & 255)) / 1.073741824E9d;
    }

    public static double d(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((((0 | ((bArr[0] << com.google.common.base.c.B) & ViewCompat.MEASURED_STATE_MASK)) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK)) | (bArr[3] & 255)) / 65536.0d;
    }

    public static float e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        return ((short) (((short) (0 | ((bArr[0] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK))) | (bArr[1] & 255))) / 256.0f;
    }

    public static String f(ByteBuffer byteBuffer) {
        int i4 = i(byteBuffer);
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < 3; i10++) {
            sb.append((char) (((i4 >> ((2 - i10) * 5)) & 31) + 96));
        }
        return sb.toString();
    }

    public static String g(ByteBuffer byteBuffer) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            byte b10 = byteBuffer.get();
            if (b10 == 0) {
                return l.a(byteArrayOutputStream.toByteArray());
            }
            byteArrayOutputStream.write(b10);
        }
    }

    public static String h(ByteBuffer byteBuffer, int i4) {
        byte[] bArr = new byte[i4];
        byteBuffer.get(bArr);
        return l.a(bArr);
    }

    public static int i(ByteBuffer byteBuffer) {
        return (a(byteBuffer.get()) << 8) + 0 + a(byteBuffer.get());
    }

    public static int j(ByteBuffer byteBuffer) {
        return a(byteBuffer.get()) + 0 + (a(byteBuffer.get()) << 8);
    }

    public static int k(ByteBuffer byteBuffer) {
        return (i(byteBuffer) << 8) + 0 + a(byteBuffer.get());
    }

    public static long l(ByteBuffer byteBuffer) {
        long j4 = byteBuffer.getInt();
        return j4 < 0 ? j4 + KSYMediaMeta.AV_CH_WIDE_RIGHT : j4;
    }

    public static long m(ByteBuffer byteBuffer) {
        return (p(byteBuffer) << 24) + (p(byteBuffer) << 16) + (p(byteBuffer) << 8) + (p(byteBuffer) << 0);
    }

    public static long n(ByteBuffer byteBuffer) {
        long i4 = i(byteBuffer) << 32;
        if (i4 >= 0) {
            return i4 + l(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }

    public static long o(ByteBuffer byteBuffer) {
        long l10 = (l(byteBuffer) << 32) + 0;
        if (l10 >= 0) {
            return l10 + l(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }

    public static int p(ByteBuffer byteBuffer) {
        return a(byteBuffer.get());
    }
}
