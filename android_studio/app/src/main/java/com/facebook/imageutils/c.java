package com.facebook.imageutils;

import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import com.google.mlkit.common.MlKitException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: JfifUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final int f13386a = 255;

    /* renamed from: b  reason: collision with root package name */
    public static final int f13387b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static final int f13388c = 216;

    /* renamed from: d  reason: collision with root package name */
    public static final int f13389d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13390e = 217;

    /* renamed from: f  reason: collision with root package name */
    public static final int f13391f = 218;

    /* renamed from: g  reason: collision with root package name */
    public static final int f13392g = 225;

    /* renamed from: h  reason: collision with root package name */
    public static final int f13393h = 192;

    /* renamed from: i  reason: collision with root package name */
    public static final int f13394i = 208;

    /* renamed from: j  reason: collision with root package name */
    public static final int f13395j = 215;

    /* renamed from: k  reason: collision with root package name */
    public static final int f13396k = 1165519206;

    private c() {
    }

    public static int a(int orientation) {
        return e.a(orientation);
    }

    public static int b(InputStream is) {
        try {
            int e4 = e(is);
            if (e4 == 0) {
                return 0;
            }
            return e.d(is, e4);
        } catch (IOException unused) {
            return 0;
        }
    }

    public static int c(byte[] jpeg) {
        return b(new ByteArrayInputStream(jpeg));
    }

    private static boolean d(int marker) {
        switch (marker) {
            case 192:
            case 193:
            case 194:
            case 195:
            case 197:
            case 198:
            case 199:
            case 201:
            case MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED /* 202 */:
            case 203:
            case MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR /* 205 */:
            case MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR /* 206 */:
            case MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD /* 207 */:
                return true;
            case 196:
            case 200:
            case 204:
            default:
                return false;
        }
    }

    private static int e(InputStream is) throws IOException {
        int a10;
        if (f(is, f13392g) && (a10 = d.a(is, 2, false) - 2) > 6) {
            int a11 = d.a(is, 4, false);
            int a12 = d.a(is, 2, false);
            int i4 = (a10 - 4) - 2;
            if (a11 == 1165519206 && a12 == 0) {
                return i4;
            }
        }
        return 0;
    }

    public static boolean f(InputStream is, int markerToFind) throws IOException {
        j.i(is);
        while (d.a(is, 1, false) == 255) {
            int i4 = 255;
            while (i4 == 255) {
                i4 = d.a(is, 1, false);
            }
            if ((markerToFind != 192 || !d(i4)) && i4 != markerToFind) {
                if (i4 != 216 && i4 != 1) {
                    if (i4 == 217 || i4 == 218) {
                        break;
                    }
                    is.skip(d.a(is, 2, false) - 2);
                }
            } else {
                return true;
            }
        }
        return false;
    }
}
