package org.jsoup.nodes;

import java.util.List;
import org.jsoup.nodes.Document;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NodeUtils.java */
/* loaded from: classes5.dex */
public final class l {
    l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Document.OutputSettings a(k kVar) {
        Document N = kVar.N();
        if (N == null) {
            N = new Document("");
        }
        return N.K2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static org.jsoup.parser.f b(k kVar) {
        Document N = kVar.N();
        return (N == null || N.N2() == null) ? new org.jsoup.parser.f(new org.jsoup.parser.b()) : N.N2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends k> List<T> c(String str, g gVar, Class<T> cls) {
        org.jsoup.helper.d.h(str);
        org.jsoup.helper.d.j(gVar);
        org.jsoup.helper.d.j(cls);
        org.jsoup.helper.e eVar = new org.jsoup.helper.e();
        return eVar.m(eVar.l(str, eVar.i(gVar)), cls);
    }
}
