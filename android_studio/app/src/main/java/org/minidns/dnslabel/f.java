package org.minidns.dnslabel;

/* compiled from: NonReservedLdhLabel.java */
/* loaded from: classes5.dex */
public final class f extends c {

    /* renamed from: h  reason: collision with root package name */
    static final /* synthetic */ boolean f92655h = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public f(String str) {
        super(str);
    }

    public static boolean l(String str) {
        if (c.k(str)) {
            return m(str);
        }
        return false;
    }

    static boolean m(String str) {
        return !h.m(str);
    }
}
