package com.facebook.imageutils;

import android.util.Pair;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import r7.h;

/* compiled from: WebpUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f13405a = "VP8 ";

    /* renamed from: b  reason: collision with root package name */
    private static final String f13406b = "VP8L";

    /* renamed from: c  reason: collision with root package name */
    private static final String f13407c = "VP8X";

    private f() {
    }

    private static boolean a(byte[] what, String with) {
        if (what.length != with.length()) {
            return false;
        }
        for (int i4 = 0; i4 < what.length; i4++) {
            if (with.charAt(i4) != what[i4]) {
                return false;
            }
        }
        return true;
    }

    public static int b(InputStream is) throws IOException {
        return ((((byte) is.read()) << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (((byte) is.read()) & 255);
    }

    private static byte c(InputStream is) throws IOException {
        return (byte) (is.read() & 255);
    }

    private static String d(byte[] header) {
        StringBuilder sb = new StringBuilder();
        for (byte b10 : header) {
            sb.append((char) b10);
        }
        return sb.toString();
    }

    private static int e(InputStream is) throws IOException {
        return ((((byte) is.read()) << com.google.common.base.c.B) & ViewCompat.MEASURED_STATE_MASK) | ((((byte) is.read()) << 16) & 16711680) | ((((byte) is.read()) << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (((byte) is.read()) & 255);
    }

    private static short f(InputStream is) throws IOException {
        return (short) (is.read() & 255);
    }

    @h
    public static Pair<Integer, Integer> g(InputStream is) {
        byte[] bArr = new byte[4];
        try {
            try {
                try {
                    is.read(bArr);
                } catch (IOException e4) {
                    e4.printStackTrace();
                    if (is != null) {
                        is.close();
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            if (!a(bArr, "RIFF")) {
                try {
                    is.close();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
                return null;
            }
            e(is);
            is.read(bArr);
            if (!a(bArr, "WEBP")) {
                try {
                    is.close();
                } catch (IOException e12) {
                    e12.printStackTrace();
                }
                return null;
            }
            is.read(bArr);
            String d4 = d(bArr);
            if (f13405a.equals(d4)) {
                Pair<Integer, Integer> h4 = h(is);
                try {
                    is.close();
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
                return h4;
            } else if (f13406b.equals(d4)) {
                Pair<Integer, Integer> i4 = i(is);
                try {
                    is.close();
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
                return i4;
            } else if (f13407c.equals(d4)) {
                Pair<Integer, Integer> j4 = j(is);
                try {
                    is.close();
                } catch (IOException e15) {
                    e15.printStackTrace();
                }
                return j4;
            } else {
                is.close();
                return null;
            }
        } catch (Throwable th) {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e16) {
                    e16.printStackTrace();
                }
            }
            throw th;
        }
    }

    @h
    private static Pair<Integer, Integer> h(final InputStream is) throws IOException {
        is.skip(7L);
        short f10 = f(is);
        short f11 = f(is);
        short f12 = f(is);
        if (f10 == 157 && f11 == 1 && f12 == 42) {
            return new Pair<>(Integer.valueOf(b(is)), Integer.valueOf(b(is)));
        }
        return null;
    }

    @h
    private static Pair<Integer, Integer> i(final InputStream is) throws IOException {
        e(is);
        if (c(is) != 47) {
            return null;
        }
        int read = ((byte) is.read()) & 255;
        return new Pair<>(Integer.valueOf(((((byte) is.read()) & 255) | ((read & 63) << 8)) + 1), Integer.valueOf(((((((byte) is.read()) & 255) & 15) << 10) | ((((byte) is.read()) & 255) << 2) | ((read & 192) >> 6)) + 1));
    }

    private static Pair<Integer, Integer> j(final InputStream is) throws IOException {
        is.skip(8L);
        return new Pair<>(Integer.valueOf(l(is) + 1), Integer.valueOf(l(is) + 1));
    }

    private static boolean k(byte input, int bitIndex) {
        return ((input >> (bitIndex % 8)) & 1) == 1;
    }

    private static int l(InputStream is) throws IOException {
        byte c10 = c(is);
        return ((c(is) << 16) & 16711680) | ((c(is) << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (c10 & 255);
    }
}
