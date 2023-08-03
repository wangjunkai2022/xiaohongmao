package org.minidns.dnslabel;

/* compiled from: NonLdhLabel.java */
/* loaded from: classes5.dex */
public abstract class e extends DnsLabel {
    /* JADX INFO: Access modifiers changed from: protected */
    public e(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static DnsLabel j(String str) {
        if (i.k(str)) {
            return new i(str);
        }
        if (d.k(str)) {
            return new d(str);
        }
        return new g(str);
    }
}
