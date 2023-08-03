package com.fasterxml.jackson.core;

/* compiled from: Base64Variants.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final String f13762a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    /* renamed from: b  reason: collision with root package name */
    public static final Base64Variant f13763b;

    /* renamed from: c  reason: collision with root package name */
    public static final Base64Variant f13764c;

    /* renamed from: d  reason: collision with root package name */
    public static final Base64Variant f13765d;

    /* renamed from: e  reason: collision with root package name */
    public static final Base64Variant f13766e;

    static {
        Base64Variant base64Variant = new Base64Variant("MIME", f13762a, true, '=', 76);
        f13763b = base64Variant;
        f13764c = new Base64Variant(base64Variant, "MIME-NO-LINEFEEDS", Integer.MAX_VALUE);
        f13765d = new Base64Variant(base64Variant, "PEM", true, '=', 64);
        StringBuilder sb = new StringBuilder(f13762a);
        sb.setCharAt(sb.indexOf("+"), shaded.org.apache.commons.codec.language.l.f93713d);
        sb.setCharAt(sb.indexOf("/"), '_');
        f13766e = new Base64Variant("MODIFIED-FOR-URL", sb.toString(), false, (char) 0, Integer.MAX_VALUE);
    }

    public static Base64Variant a() {
        return f13764c;
    }

    public static Base64Variant b(String str) throws IllegalArgumentException {
        String str2;
        Base64Variant base64Variant = f13763b;
        if (base64Variant.f13665d.equals(str)) {
            return base64Variant;
        }
        Base64Variant base64Variant2 = f13764c;
        if (base64Variant2.f13665d.equals(str)) {
            return base64Variant2;
        }
        Base64Variant base64Variant3 = f13765d;
        if (base64Variant3.f13665d.equals(str)) {
            return base64Variant3;
        }
        Base64Variant base64Variant4 = f13766e;
        if (base64Variant4.f13665d.equals(str)) {
            return base64Variant4;
        }
        if (str == null) {
            str2 = "<null>";
        } else {
            str2 = "'" + str + "'";
        }
        throw new IllegalArgumentException("No Base64Variant with name " + str2);
    }
}
