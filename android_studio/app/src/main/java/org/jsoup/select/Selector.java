package org.jsoup.select;

import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;

/* loaded from: classes5.dex */
public class Selector {

    /* loaded from: classes5.dex */
    public static class SelectorParseException extends IllegalStateException {
        public SelectorParseException(String str, Object... objArr) {
            super(String.format(str, objArr));
        }
    }

    private Selector() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Elements a(Collection<org.jsoup.nodes.g> collection, Collection<org.jsoup.nodes.g> collection2) {
        Elements elements = new Elements();
        for (org.jsoup.nodes.g gVar : collection) {
            boolean z9 = false;
            Iterator<org.jsoup.nodes.g> it = collection2.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (gVar.equals(it.next())) {
                        z9 = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (!z9) {
                elements.add(gVar);
            }
        }
        return elements;
    }

    public static Elements b(String str, Iterable<org.jsoup.nodes.g> iterable) {
        org.jsoup.helper.d.h(str);
        org.jsoup.helper.d.j(iterable);
        c t9 = f.t(str);
        Elements elements = new Elements();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (org.jsoup.nodes.g gVar : iterable) {
            Iterator<org.jsoup.nodes.g> it = d(t9, gVar).iterator();
            while (it.hasNext()) {
                org.jsoup.nodes.g next = it.next();
                if (identityHashMap.put(next, Boolean.TRUE) == null) {
                    elements.add(next);
                }
            }
        }
        return elements;
    }

    public static Elements c(String str, org.jsoup.nodes.g gVar) {
        org.jsoup.helper.d.h(str);
        return d(f.t(str), gVar);
    }

    public static Elements d(c cVar, org.jsoup.nodes.g gVar) {
        org.jsoup.helper.d.j(cVar);
        org.jsoup.helper.d.j(gVar);
        return a.a(cVar, gVar);
    }

    @r7.h
    public static org.jsoup.nodes.g e(String str, org.jsoup.nodes.g gVar) {
        org.jsoup.helper.d.h(str);
        return a.b(f.t(str), gVar);
    }
}
