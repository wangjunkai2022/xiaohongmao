package org.jsoup.select;

import java.util.Iterator;
import java.util.regex.Pattern;
import org.jsoup.nodes.Document;

/* compiled from: Evaluator.java */
/* loaded from: classes5.dex */
public abstract class c {

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class a extends c {
        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return true;
        }

        public String toString() {
            return "*";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class a0 extends o {
        public a0(int i4, int i10) {
            super(i4, i10);
        }

        @Override // org.jsoup.select.c.o
        protected int b(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            if (gVar2.O() == null) {
                return 0;
            }
            return gVar2.O().C0().size() - gVar2.Q0();
        }

        @Override // org.jsoup.select.c.o
        protected String c() {
            return "nth-last-child";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class b extends c {

        /* renamed from: a  reason: collision with root package name */
        private final String f92131a;

        public b(String str) {
            this.f92131a = str;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.A(this.f92131a);
        }

        public String toString() {
            return String.format("[%s]", this.f92131a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static class b0 extends o {
        public b0(int i4, int i10) {
            super(i4, i10);
        }

        @Override // org.jsoup.select.c.o
        protected int b(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            int i4 = 0;
            if (gVar2.O() == null) {
                return 0;
            }
            Elements C0 = gVar2.O().C0();
            for (int Q0 = gVar2.Q0(); Q0 < C0.size(); Q0++) {
                if (C0.get(Q0).i2().equals(gVar2.i2())) {
                    i4++;
                }
            }
            return i4;
        }

        @Override // org.jsoup.select.c.o
        protected String c() {
            return "nth-last-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: org.jsoup.select.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static abstract class AbstractC0805c extends c {

        /* renamed from: a  reason: collision with root package name */
        String f92132a;

        /* renamed from: b  reason: collision with root package name */
        String f92133b;

        public AbstractC0805c(String str, String str2) {
            this(str, str2, true);
        }

        public AbstractC0805c(String str, String str2, boolean z9) {
            org.jsoup.helper.d.h(str);
            org.jsoup.helper.d.h(str2);
            this.f92132a = org.jsoup.internal.d.b(str);
            boolean z10 = (str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""));
            str2 = z10 ? str2.substring(1, str2.length() - 1) : str2;
            this.f92133b = z9 ? org.jsoup.internal.d.b(str2) : org.jsoup.internal.d.c(str2, z10);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static class c0 extends o {
        public c0(int i4, int i10) {
            super(i4, i10);
        }

        @Override // org.jsoup.select.c.o
        protected int b(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            int i4 = 0;
            if (gVar2.O() == null) {
                return 0;
            }
            Iterator<org.jsoup.nodes.g> it = gVar2.O().C0().iterator();
            while (it.hasNext()) {
                org.jsoup.nodes.g next = it.next();
                if (next.i2().equals(gVar2.i2())) {
                    i4++;
                    continue;
                }
                if (next == gVar2) {
                    break;
                }
            }
            return i4;
        }

        @Override // org.jsoup.select.c.o
        protected String c() {
            return "nth-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class d extends c {

        /* renamed from: a  reason: collision with root package name */
        private final String f92134a;

        public d(String str) {
            org.jsoup.helper.d.h(str);
            this.f92134a = org.jsoup.internal.d.a(str);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            for (org.jsoup.nodes.a aVar : gVar2.i().g()) {
                if (org.jsoup.internal.d.a(aVar.getKey()).startsWith(this.f92134a)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("[^%s]", this.f92134a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class d0 extends c {
        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            org.jsoup.nodes.g O = gVar2.O();
            return (O == null || (O instanceof Document) || !gVar2.h2().isEmpty()) ? false : true;
        }

        public String toString() {
            return ":only-child";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class e extends AbstractC0805c {
        public e(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.A(this.f92132a) && this.f92133b.equalsIgnoreCase(gVar2.g(this.f92132a).trim());
        }

        public String toString() {
            return String.format("[%s=%s]", this.f92132a, this.f92133b);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class e0 extends c {
        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            org.jsoup.nodes.g O = gVar2.O();
            if (O == null || (O instanceof Document)) {
                return false;
            }
            Iterator<org.jsoup.nodes.g> it = O.C0().iterator();
            int i4 = 0;
            while (it.hasNext()) {
                if (it.next().i2().equals(gVar2.i2())) {
                    i4++;
                }
            }
            return i4 == 1;
        }

        public String toString() {
            return ":only-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class f extends AbstractC0805c {
        public f(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.A(this.f92132a) && org.jsoup.internal.d.a(gVar2.g(this.f92132a)).contains(this.f92133b);
        }

        public String toString() {
            return String.format("[%s*=%s]", this.f92132a, this.f92133b);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class f0 extends c {
        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            if (gVar instanceof Document) {
                gVar = gVar.A0(0);
            }
            return gVar2 == gVar;
        }

        public String toString() {
            return ":root";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class g extends AbstractC0805c {
        public g(String str, String str2) {
            super(str, str2, false);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.A(this.f92132a) && org.jsoup.internal.d.a(gVar2.g(this.f92132a)).endsWith(this.f92133b);
        }

        public String toString() {
            return String.format("[%s$=%s]", this.f92132a, this.f92133b);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class g0 extends c {
        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            if (gVar2 instanceof org.jsoup.nodes.m) {
                return true;
            }
            for (org.jsoup.nodes.k kVar : gVar2.n2()) {
                org.jsoup.nodes.m mVar = new org.jsoup.nodes.m(org.jsoup.parser.g.p(gVar2.j2()), gVar2.k(), gVar2.i());
                kVar.X(mVar);
                mVar.p0(kVar);
            }
            return false;
        }

        public String toString() {
            return ":matchText";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class h extends c {

        /* renamed from: a  reason: collision with root package name */
        String f92135a;

        /* renamed from: b  reason: collision with root package name */
        Pattern f92136b;

        public h(String str, Pattern pattern) {
            this.f92135a = org.jsoup.internal.d.b(str);
            this.f92136b = pattern;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.A(this.f92135a) && this.f92136b.matcher(gVar2.g(this.f92135a)).find();
        }

        public String toString() {
            return String.format("[%s~=%s]", this.f92135a, this.f92136b.toString());
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class h0 extends c {

        /* renamed from: a  reason: collision with root package name */
        private final Pattern f92137a;

        public h0(Pattern pattern) {
            this.f92137a = pattern;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return this.f92137a.matcher(gVar2.l2()).find();
        }

        public String toString() {
            return String.format(":matches(%s)", this.f92137a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class i extends AbstractC0805c {
        public i(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return !this.f92133b.equalsIgnoreCase(gVar2.g(this.f92132a));
        }

        public String toString() {
            return String.format("[%s!=%s]", this.f92132a, this.f92133b);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class i0 extends c {

        /* renamed from: a  reason: collision with root package name */
        private final Pattern f92138a;

        public i0(Pattern pattern) {
            this.f92138a = pattern;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return this.f92138a.matcher(gVar2.K1()).find();
        }

        public String toString() {
            return String.format(":matchesOwn(%s)", this.f92138a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class j extends AbstractC0805c {
        public j(String str, String str2) {
            super(str, str2, false);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.A(this.f92132a) && org.jsoup.internal.d.a(gVar2.g(this.f92132a)).startsWith(this.f92133b);
        }

        public String toString() {
            return String.format("[%s^=%s]", this.f92132a, this.f92133b);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class j0 extends c {

        /* renamed from: a  reason: collision with root package name */
        private final String f92139a;

        public j0(String str) {
            this.f92139a = str;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.J1().equals(this.f92139a);
        }

        public String toString() {
            return String.format("%s", this.f92139a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class k extends c {

        /* renamed from: a  reason: collision with root package name */
        private final String f92140a;

        public k(String str) {
            this.f92140a = str;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.r1(this.f92140a);
        }

        public String toString() {
            return String.format(".%s", this.f92140a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class k0 extends c {

        /* renamed from: a  reason: collision with root package name */
        private final String f92141a;

        public k0(String str) {
            this.f92141a = str;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.J1().endsWith(this.f92141a);
        }

        public String toString() {
            return String.format("%s", this.f92141a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class l extends c {

        /* renamed from: a  reason: collision with root package name */
        private final String f92142a;

        public l(String str) {
            this.f92142a = org.jsoup.internal.d.a(str);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return org.jsoup.internal.d.a(gVar2.M0()).contains(this.f92142a);
        }

        public String toString() {
            return String.format(":containsData(%s)", this.f92142a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class m extends c {

        /* renamed from: a  reason: collision with root package name */
        private final String f92143a;

        public m(String str) {
            this.f92143a = org.jsoup.internal.d.a(org.jsoup.internal.f.n(str));
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return org.jsoup.internal.d.a(gVar2.K1()).contains(this.f92143a);
        }

        public String toString() {
            return String.format(":containsOwn(%s)", this.f92143a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class n extends c {

        /* renamed from: a  reason: collision with root package name */
        private final String f92144a;

        public n(String str) {
            this.f92144a = org.jsoup.internal.d.a(org.jsoup.internal.f.n(str));
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return org.jsoup.internal.d.a(gVar2.l2()).contains(this.f92144a);
        }

        public String toString() {
            return String.format(":contains(%s)", this.f92144a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class p extends c {

        /* renamed from: a  reason: collision with root package name */
        private final String f92147a;

        public p(String str) {
            this.f92147a = str;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return this.f92147a.equals(gVar2.v1());
        }

        public String toString() {
            return String.format("#%s", this.f92147a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class q extends r {
        public q(int i4) {
            super(i4);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.Q0() == this.f92148a;
        }

        public String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.f92148a));
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static abstract class r extends c {

        /* renamed from: a  reason: collision with root package name */
        int f92148a;

        public r(int i4) {
            this.f92148a = i4;
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class s extends r {
        public s(int i4) {
            super(i4);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.Q0() > this.f92148a;
        }

        public String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.f92148a));
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class t extends r {
        public t(int i4) {
            super(i4);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar != gVar2 && gVar2.Q0() < this.f92148a;
        }

        public String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.f92148a));
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class u extends c {
        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            for (org.jsoup.nodes.k kVar : gVar2.p()) {
                if (!(kVar instanceof org.jsoup.nodes.d) && !(kVar instanceof org.jsoup.nodes.o) && !(kVar instanceof org.jsoup.nodes.f)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return ":empty";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class v extends c {
        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            org.jsoup.nodes.g O = gVar2.O();
            return (O == null || (O instanceof Document) || gVar2.Q0() != 0) ? false : true;
        }

        public String toString() {
            return ":first-child";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class w extends c0 {
        public w() {
            super(0, 1);
        }

        @Override // org.jsoup.select.c.o
        public String toString() {
            return ":first-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class x extends c {
        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            org.jsoup.nodes.g O = gVar2.O();
            return (O == null || (O instanceof Document) || gVar2.Q0() != O.C0().size() - 1) ? false : true;
        }

        public String toString() {
            return ":last-child";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class y extends b0 {
        public y() {
            super(0, 1);
        }

        @Override // org.jsoup.select.c.o
        public String toString() {
            return ":last-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static final class z extends o {
        public z(int i4, int i10) {
            super(i4, i10);
        }

        @Override // org.jsoup.select.c.o
        protected int b(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            return gVar2.Q0() + 1;
        }

        @Override // org.jsoup.select.c.o
        protected String c() {
            return "nth-child";
        }
    }

    public abstract boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2);

    /* compiled from: Evaluator.java */
    /* loaded from: classes5.dex */
    public static abstract class o extends c {

        /* renamed from: a  reason: collision with root package name */
        protected final int f92145a;

        /* renamed from: b  reason: collision with root package name */
        protected final int f92146b;

        public o(int i4, int i10) {
            this.f92145a = i4;
            this.f92146b = i10;
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            org.jsoup.nodes.g O = gVar2.O();
            if (O == null || (O instanceof Document)) {
                return false;
            }
            int b10 = b(gVar, gVar2);
            int i4 = this.f92145a;
            if (i4 == 0) {
                return b10 == this.f92146b;
            }
            int i10 = this.f92146b;
            return (b10 - i10) * i4 >= 0 && (b10 - i10) % i4 == 0;
        }

        protected abstract int b(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2);

        protected abstract String c();

        public String toString() {
            return this.f92145a == 0 ? String.format(":%s(%d)", c(), Integer.valueOf(this.f92146b)) : this.f92146b == 0 ? String.format(":%s(%dn)", c(), Integer.valueOf(this.f92145a)) : String.format(":%s(%dn%+d)", c(), Integer.valueOf(this.f92145a), Integer.valueOf(this.f92146b));
        }

        public o(int i4) {
            this(0, i4);
        }
    }
}
