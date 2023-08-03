package org.minidns.dnslabel;

/* compiled from: LdhLabel.java */
/* loaded from: classes5.dex */
public abstract class c extends DnsLabel {

    /* renamed from: g  reason: collision with root package name */
    static final /* synthetic */ boolean f92654g = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public c(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static c j(String str) {
        if (h.l(str)) {
            if (j.o(str)) {
                return j.j(str);
            }
            return new h(str);
        }
        return new f(str);
    }

    public static boolean k(String str) {
        if (str.isEmpty() || d.k(str)) {
            return false;
        }
        for (int i4 = 0; i4 < str.length(); i4++) {
            char charAt = str.charAt(i4);
            if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && ((charAt < '0' || charAt > '9') && charAt != '-'))) {
                return false;
            }
        }
        return true;
    }
}
