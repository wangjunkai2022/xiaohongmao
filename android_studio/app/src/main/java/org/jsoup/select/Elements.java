package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.jsoup.nodes.i;
import org.jsoup.nodes.k;
import org.jsoup.nodes.n;

/* loaded from: classes5.dex */
public class Elements extends ArrayList<org.jsoup.nodes.g> {
    public Elements() {
    }

    private <T extends k> List<T> a(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.g next = it.next();
            for (int i4 = 0; i4 < next.o(); i4++) {
                k n9 = next.n(i4);
                if (cls.isInstance(n9)) {
                    arrayList.add(cls.cast(n9));
                }
            }
        }
        return arrayList;
    }

    private Elements b(@r7.h String str, boolean z9, boolean z10) {
        Elements elements = new Elements();
        c t9 = str != null ? f.t(str) : null;
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.g next = it.next();
            do {
                next = z9 ? next.G1() : next.U1();
                if (next != null) {
                    if (t9 == null) {
                        elements.add(next);
                        continue;
                    } else if (next.B1(t9)) {
                        elements.add(next);
                        continue;
                    } else {
                        continue;
                    }
                }
            } while (z10);
        }
        return elements;
    }

    public Elements addClass(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().l0(str);
        }
        return this;
    }

    public Elements after(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().e(str);
        }
        return this;
    }

    public Elements append(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().o0(str);
        }
        return this;
    }

    public String attr(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.g next = it.next();
            if (next.A(str)) {
                return next.g(str);
            }
        }
        return "";
    }

    public Elements before(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().l(str);
        }
        return this;
    }

    public List<org.jsoup.nodes.d> comments() {
        return a(org.jsoup.nodes.d.class);
    }

    public List<org.jsoup.nodes.e> dataNodes() {
        return a(org.jsoup.nodes.e.class);
    }

    public List<String> eachAttr(String str) {
        ArrayList arrayList = new ArrayList(size());
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.g next = it.next();
            if (next.A(str)) {
                arrayList.add(next.g(str));
            }
        }
        return arrayList;
    }

    public List<String> eachText() {
        ArrayList arrayList = new ArrayList(size());
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.g next = it.next();
            if (next.s1()) {
                arrayList.add(next.l2());
            }
        }
        return arrayList;
    }

    public Elements empty() {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().w();
        }
        return this;
    }

    public Elements eq(int i4) {
        return size() > i4 ? new Elements(get(i4)) : new Elements();
    }

    public Elements filter(NodeFilter nodeFilter) {
        d.b(nodeFilter, this);
        return this;
    }

    @r7.h
    public org.jsoup.nodes.g first() {
        if (isEmpty()) {
            return null;
        }
        return get(0);
    }

    public List<i> forms() {
        ArrayList arrayList = new ArrayList();
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.g next = it.next();
            if (next instanceof i) {
                arrayList.add((i) next);
            }
        }
        return arrayList;
    }

    public boolean hasAttr(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            if (it.next().A(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasClass(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            if (it.next().r1(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasText() {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            if (it.next().s1()) {
                return true;
            }
        }
        return false;
    }

    public String html() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.g next = it.next();
            if (b10.length() != 0) {
                b10.append("\n");
            }
            b10.append(next.t1());
        }
        return org.jsoup.internal.f.p(b10);
    }

    public boolean is(String str) {
        c t9 = f.t(str);
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            if (it.next().B1(t9)) {
                return true;
            }
        }
        return false;
    }

    @r7.h
    public org.jsoup.nodes.g last() {
        if (isEmpty()) {
            return null;
        }
        return get(size() - 1);
    }

    public Elements next() {
        return b(null, true, false);
    }

    public Elements nextAll() {
        return b(null, true, true);
    }

    public Elements not(String str) {
        return Selector.a(this, Selector.b(str, this));
    }

    public String outerHtml() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.g next = it.next();
            if (b10.length() != 0) {
                b10.append("\n");
            }
            b10.append(next.J());
        }
        return org.jsoup.internal.f.p(b10);
    }

    public Elements parents() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            linkedHashSet.addAll(it.next().N1());
        }
        return new Elements(linkedHashSet);
    }

    public Elements prepend(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().O1(str);
        }
        return this;
    }

    public Elements prev() {
        return b(null, false, false);
    }

    public Elements prevAll() {
        return b(null, false, true);
    }

    public Elements remove() {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().S();
        }
        return this;
    }

    public Elements removeAttr(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().T(str);
        }
        return this;
    }

    public Elements removeClass(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().X1(str);
        }
        return this;
    }

    public Elements select(String str) {
        return Selector.b(str, this);
    }

    public Elements tagName(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().k2(str);
        }
        return this;
    }

    public String text() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.g next = it.next();
            if (b10.length() != 0) {
                b10.append(" ");
            }
            b10.append(next.l2());
        }
        return org.jsoup.internal.f.p(b10);
    }

    public List<n> textNodes() {
        return a(n.class);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return outerHtml();
    }

    public Elements toggleClass(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().o2(str);
        }
        return this;
    }

    public Elements traverse(e eVar) {
        d.d(eVar, this);
        return this;
    }

    public Elements unwrap() {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().g0();
        }
        return this;
    }

    public String val() {
        return size() > 0 ? first().q2() : "";
    }

    public Elements wrap(String str) {
        org.jsoup.helper.d.h(str);
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().h0(str);
        }
        return this;
    }

    public Elements(int i4) {
        super(i4);
    }

    @Override // java.util.ArrayList
    public Elements clone() {
        Elements elements = new Elements(size());
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            elements.add(it.next().t());
        }
        return elements;
    }

    public Elements next(String str) {
        return b(str, true, false);
    }

    public Elements nextAll(String str) {
        return b(str, true, true);
    }

    public Elements prev(String str) {
        return b(str, false, false);
    }

    public Elements prevAll(String str) {
        return b(str, false, true);
    }

    public Elements(Collection<org.jsoup.nodes.g> collection) {
        super(collection);
    }

    public Elements val(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().r2(str);
        }
        return this;
    }

    public Elements(List<org.jsoup.nodes.g> list) {
        super(list);
    }

    public Elements attr(String str, String str2) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().h(str, str2);
        }
        return this;
    }

    public Elements(org.jsoup.nodes.g... gVarArr) {
        super(Arrays.asList(gVarArr));
    }

    public Elements html(String str) {
        Iterator<org.jsoup.nodes.g> it = iterator();
        while (it.hasNext()) {
            it.next().u1(str);
        }
        return this;
    }
}
