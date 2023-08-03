package org.minidns.dnslabel;

/* compiled from: ReservedLdhLabel.java */
/* loaded from: classes5.dex */
public class h extends c {

    /* renamed from: h  reason: collision with root package name */
    static final /* synthetic */ boolean f92656h = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public h(String str) {
        super(str);
    }

    public static boolean l(String str) {
        if (c.k(str)) {
            return m(str);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean m(String str) {
        return str.length() >= 4 && str.charAt(2) == '-' && str.charAt(3) == '-';
    }
}
