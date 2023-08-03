package t0;

import com.facebook.infer.annotation.Nullsafe;
import java.io.UnsupportedEncodingException;
import r7.h;

/* compiled from: WebpSupportStatus.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c {

    /* renamed from: f  reason: collision with root package name */
    private static final String f93754f = "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA==";

    /* renamed from: g  reason: collision with root package name */
    private static final int f93755g = 20;

    /* renamed from: h  reason: collision with root package name */
    private static final int f93756h = 21;

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f93749a = false;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f93750b = true;

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f93751c = e();
    @h

    /* renamed from: d  reason: collision with root package name */
    public static b f93752d = null;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f93753e = false;

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f93757i = a("RIFF");

    /* renamed from: j  reason: collision with root package name */
    private static final byte[] f93758j = a("WEBP");

    /* renamed from: k  reason: collision with root package name */
    private static final byte[] f93759k = a("VP8 ");

    /* renamed from: l  reason: collision with root package name */
    private static final byte[] f93760l = a("VP8L");

    /* renamed from: m  reason: collision with root package name */
    private static final byte[] f93761m = a("VP8X");

    private static byte[] a(String value) {
        try {
            return value.getBytes("ASCII");
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException("ASCII not found!", e4);
        }
    }

    public static boolean b(final byte[] imageHeaderBytes, final int offset) {
        return k(imageHeaderBytes, offset + 12, f93761m) && ((imageHeaderBytes[offset + 20] & 2) == 2);
    }

    public static boolean c(final byte[] imageHeaderBytes, final int offset, final int headerSize) {
        return headerSize >= 21 && k(imageHeaderBytes, offset + 12, f93761m);
    }

    public static boolean d(final byte[] imageHeaderBytes, final int offset) {
        return k(imageHeaderBytes, offset + 12, f93761m) && ((imageHeaderBytes[offset + 20] & 16) == 16);
    }

    private static boolean e() {
        return true;
    }

    public static boolean f(final byte[] imageHeaderBytes, final int offset) {
        return k(imageHeaderBytes, offset + 12, f93760l);
    }

    public static boolean g(final byte[] imageHeaderBytes, final int offset) {
        return k(imageHeaderBytes, offset + 12, f93759k);
    }

    public static boolean h(final byte[] imageHeaderBytes, final int offset, final int headerSize) {
        return headerSize >= 20 && k(imageHeaderBytes, offset, f93757i) && k(imageHeaderBytes, offset + 8, f93758j);
    }

    public static boolean i(final byte[] imageHeaderBytes, final int offset, final int headerSize) {
        if (g(imageHeaderBytes, offset)) {
            return f93750b;
        }
        if (f(imageHeaderBytes, offset)) {
            return f93751c;
        }
        if (!c(imageHeaderBytes, offset, headerSize) || b(imageHeaderBytes, offset)) {
            return false;
        }
        return f93751c;
    }

    @h
    public static b j() {
        if (f93753e) {
            return f93752d;
        }
        b bVar = null;
        try {
            bVar = (b) Class.forName("com.facebook.webpsupport.WebpBitmapFactoryImpl").newInstance();
        } catch (Throwable unused) {
        }
        f93753e = true;
        return bVar;
    }

    private static boolean k(final byte[] byteArray, final int offset, final byte[] pattern) {
        if (pattern == null || byteArray == null || pattern.length + offset > byteArray.length) {
            return false;
        }
        for (int i4 = 0; i4 < pattern.length; i4++) {
            if (byteArray[i4 + offset] != pattern[i4]) {
                return false;
            }
        }
        return true;
    }
}
