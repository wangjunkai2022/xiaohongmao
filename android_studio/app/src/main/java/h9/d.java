package h9;

import java.nio.charset.Charset;

/* compiled from: Charsets.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f69069a = Charset.forName("ISO-8859-1");

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f69070b = Charset.forName("US-ASCII");

    /* renamed from: c  reason: collision with root package name */
    public static final Charset f69071c = Charset.forName("UTF-16");

    /* renamed from: d  reason: collision with root package name */
    public static final Charset f69072d = Charset.forName(c.f69066d);

    /* renamed from: e  reason: collision with root package name */
    public static final Charset f69073e = Charset.forName("UTF-16LE");

    /* renamed from: f  reason: collision with root package name */
    public static final Charset f69074f = Charset.forName("UTF-8");

    public static Charset a(String str) {
        return str == null ? Charset.defaultCharset() : Charset.forName(str);
    }

    public static Charset b(Charset charset) {
        return charset == null ? Charset.defaultCharset() : charset;
    }
}
