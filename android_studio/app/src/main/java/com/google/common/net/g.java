package com.google.common.net;

/* compiled from: UrlEscapers.java */
@h3.b
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: b  reason: collision with root package name */
    static final String f34772b = "-._~!$'()*,;&=@:";

    /* renamed from: a  reason: collision with root package name */
    static final String f34771a = "-_.*";

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.common.escape.f f34773c = new f(f34771a, true);

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.common.escape.f f34774d = new f("-._~!$'()*,;&=@:+", false);

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.common.escape.f f34775e = new f("-._~!$'()*,;&=@:+/?", false);

    private g() {
    }

    public static com.google.common.escape.f a() {
        return f34773c;
    }

    public static com.google.common.escape.f b() {
        return f34775e;
    }

    public static com.google.common.escape.f c() {
        return f34774d;
    }
}
