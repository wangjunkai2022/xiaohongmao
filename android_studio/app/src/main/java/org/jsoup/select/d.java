package org.jsoup.select;

import java.util.Iterator;
import org.jsoup.nodes.k;
import org.jsoup.select.NodeFilter;

/* compiled from: NodeTraversor.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f92149a = false;

    public static NodeFilter.FilterResult a(NodeFilter nodeFilter, k kVar) {
        k kVar2 = kVar;
        int i4 = 0;
        while (kVar2 != null) {
            NodeFilter.FilterResult b10 = nodeFilter.b(kVar2, i4);
            if (b10 == NodeFilter.FilterResult.STOP) {
                return b10;
            }
            if (b10 == NodeFilter.FilterResult.CONTINUE && kVar2.o() > 0) {
                kVar2 = kVar2.n(0);
                i4++;
            } else {
                while (kVar2.G() == null && i4 > 0) {
                    NodeFilter.FilterResult filterResult = NodeFilter.FilterResult.CONTINUE;
                    if ((b10 == filterResult || b10 == NodeFilter.FilterResult.SKIP_CHILDREN) && (b10 = nodeFilter.a(kVar2, i4)) == NodeFilter.FilterResult.STOP) {
                        return b10;
                    }
                    k P = kVar2.P();
                    i4--;
                    if (b10 == NodeFilter.FilterResult.REMOVE) {
                        kVar2.S();
                    }
                    b10 = filterResult;
                    kVar2 = P;
                }
                if ((b10 == NodeFilter.FilterResult.CONTINUE || b10 == NodeFilter.FilterResult.SKIP_CHILDREN) && (b10 = nodeFilter.a(kVar2, i4)) == NodeFilter.FilterResult.STOP) {
                    return b10;
                }
                if (kVar2 == kVar) {
                    return b10;
                }
                k G = kVar2.G();
                if (b10 == NodeFilter.FilterResult.REMOVE) {
                    kVar2.S();
                }
                kVar2 = G;
            }
        }
        return NodeFilter.FilterResult.CONTINUE;
    }

    public static void b(NodeFilter nodeFilter, Elements elements) {
        org.jsoup.helper.d.j(nodeFilter);
        org.jsoup.helper.d.j(elements);
        Iterator<org.jsoup.nodes.g> it = elements.iterator();
        while (it.hasNext() && a(nodeFilter, it.next()) != NodeFilter.FilterResult.STOP) {
        }
    }

    public static void c(e eVar, k kVar) {
        org.jsoup.helper.d.j(eVar);
        org.jsoup.helper.d.j(kVar);
        k kVar2 = kVar;
        int i4 = 0;
        while (kVar2 != null) {
            k P = kVar2.P();
            eVar.b(kVar2, i4);
            if (P != null && !kVar2.C()) {
                kVar2 = P.n(kVar2.d0());
            }
            if (kVar2.o() > 0) {
                kVar2 = kVar2.n(0);
                i4++;
            } else {
                while (kVar2.G() == null && i4 > 0) {
                    eVar.a(kVar2, i4);
                    kVar2 = kVar2.P();
                    i4--;
                }
                eVar.a(kVar2, i4);
                if (kVar2 == kVar) {
                    return;
                }
                kVar2 = kVar2.G();
            }
        }
    }

    public static void d(e eVar, Elements elements) {
        org.jsoup.helper.d.j(eVar);
        org.jsoup.helper.d.j(elements);
        Iterator<org.jsoup.nodes.g> it = elements.iterator();
        while (it.hasNext()) {
            c(eVar, it.next());
        }
    }
}
