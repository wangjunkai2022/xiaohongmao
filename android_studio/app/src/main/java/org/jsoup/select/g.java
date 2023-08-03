package org.jsoup.select;

import org.jsoup.nodes.k;
import org.jsoup.select.a;

/* compiled from: StructuralEvaluator.java */
/* loaded from: classes5.dex */
abstract class g extends org.jsoup.select.c {

    /* renamed from: a  reason: collision with root package name */
    org.jsoup.select.c f92158a;

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes5.dex */
    static class a extends g {

        /* renamed from: b  reason: collision with root package name */
        final a.b f92159b;

        public a(org.jsoup.select.c cVar) {
            this.f92158a = cVar;
            this.f92159b = new a.b(cVar);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            for (int i4 = 0; i4 < gVar2.o(); i4++) {
                k n9 = gVar2.n(i4);
                if ((n9 instanceof org.jsoup.nodes.g) && this.f92159b.c(gVar2, (org.jsoup.nodes.g) n9) != null) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format(":has(%s)", this.f92158a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes5.dex */
    static class b extends g {
        public b(org.jsoup.select.c cVar) {
            this.f92158a = cVar;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            org.jsoup.nodes.g O;
            return (gVar == gVar2 || (O = gVar2.O()) == null || !this.f92158a.a(gVar, O)) ? false : true;
        }

        public String toString() {
            return String.format("%s > ", this.f92158a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes5.dex */
    static class c extends g {
        public c(org.jsoup.select.c cVar) {
            this.f92158a = cVar;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            org.jsoup.nodes.g U1;
            return (gVar == gVar2 || (U1 = gVar2.U1()) == null || !this.f92158a.a(gVar, U1)) ? false : true;
        }

        public String toString() {
            return String.format("%s + ", this.f92158a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes5.dex */
    static class d extends g {
        public d(org.jsoup.select.c cVar) {
            this.f92158a = cVar;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return !this.f92158a.a(gVar, gVar2);
        }

        public String toString() {
            return String.format(":not(%s)", this.f92158a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes5.dex */
    static class e extends g {
        public e(org.jsoup.select.c cVar) {
            this.f92158a = cVar;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            if (gVar == gVar2) {
                return false;
            }
            for (org.jsoup.nodes.g O = gVar2.O(); O != null; O = O.O()) {
                if (this.f92158a.a(gVar, O)) {
                    return true;
                }
                if (O == gVar) {
                    break;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("%s ", this.f92158a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes5.dex */
    static class f extends g {
        public f(org.jsoup.select.c cVar) {
            this.f92158a = cVar;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            if (gVar == gVar2) {
                return false;
            }
            for (org.jsoup.nodes.g U1 = gVar2.U1(); U1 != null; U1 = U1.U1()) {
                if (this.f92158a.a(gVar, U1)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("%s ~ ", this.f92158a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* renamed from: org.jsoup.select.g$g  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static class C0806g extends org.jsoup.select.c {
        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar == gVar2;
        }
    }

    g() {
    }
}
