package org.minidns.dnslabel;

import java.util.Locale;

/* compiled from: XnLabel.java */
/* loaded from: classes5.dex */
public abstract class j extends h {

    /* renamed from: i  reason: collision with root package name */
    static final /* synthetic */ boolean f92657i = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public j(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static c j(String str) {
        if (str.equals(f9.c.c(str))) {
            return new b(str);
        }
        return new a(str);
    }

    public static boolean n(String str) {
        if (c.k(str)) {
            return o(str);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean o(String str) {
        return str.substring(0, 2).toLowerCase(Locale.US).equals("xn");
    }
}
