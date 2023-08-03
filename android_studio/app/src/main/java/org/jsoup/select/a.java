package org.jsoup.select;

import org.jsoup.nodes.k;
import org.jsoup.select.NodeFilter;

/* compiled from: Collector.java */
/* loaded from: classes5.dex */
public class a {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Collector.java */
    /* renamed from: org.jsoup.select.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0803a implements e {

        /* renamed from: a  reason: collision with root package name */
        private final org.jsoup.nodes.g f92123a;

        /* renamed from: b  reason: collision with root package name */
        private final Elements f92124b;

        /* renamed from: c  reason: collision with root package name */
        private final c f92125c;

        C0803a(org.jsoup.nodes.g gVar, Elements elements, c cVar) {
            this.f92123a = gVar;
            this.f92124b = elements;
            this.f92125c = cVar;
        }

        @Override // org.jsoup.select.e
        public void a(k kVar, int i4) {
        }

        @Override // org.jsoup.select.e
        public void b(k kVar, int i4) {
            if (kVar instanceof org.jsoup.nodes.g) {
                org.jsoup.nodes.g gVar = (org.jsoup.nodes.g) kVar;
                if (this.f92125c.a(this.f92123a, gVar)) {
                    this.f92124b.add(gVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Collector.java */
    /* loaded from: classes5.dex */
    public static class b implements NodeFilter {
        @r7.h

        /* renamed from: a  reason: collision with root package name */
        private org.jsoup.nodes.g f92126a = null;
        @r7.h

        /* renamed from: b  reason: collision with root package name */
        private org.jsoup.nodes.g f92127b = null;

        /* renamed from: c  reason: collision with root package name */
        private final c f92128c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(c cVar) {
            this.f92128c = cVar;
        }

        @Override // org.jsoup.select.NodeFilter
        public NodeFilter.FilterResult a(k kVar, int i4) {
            return NodeFilter.FilterResult.CONTINUE;
        }

        @Override // org.jsoup.select.NodeFilter
        public NodeFilter.FilterResult b(k kVar, int i4) {
            if (kVar instanceof org.jsoup.nodes.g) {
                org.jsoup.nodes.g gVar = (org.jsoup.nodes.g) kVar;
                if (this.f92128c.a(this.f92126a, gVar)) {
                    this.f92127b = gVar;
                    return NodeFilter.FilterResult.STOP;
                }
            }
            return NodeFilter.FilterResult.CONTINUE;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @r7.h
        public org.jsoup.nodes.g c(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            this.f92126a = gVar;
            this.f92127b = null;
            d.a(this, gVar2);
            return this.f92127b;
        }
    }

    private a() {
    }

    public static Elements a(c cVar, org.jsoup.nodes.g gVar) {
        Elements elements = new Elements();
        d.c(new C0803a(gVar, elements, cVar), gVar);
        return elements;
    }

    @r7.h
    public static org.jsoup.nodes.g b(c cVar, org.jsoup.nodes.g gVar) {
        return new b(cVar).c(gVar, gVar);
    }
}
