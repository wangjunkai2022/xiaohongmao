package org.jsoup.nodes;

import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import kotlin.text.Typography;
import org.jsoup.helper.ChangeNotifyingArrayList;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.jsoup.select.NodeFilter;
import org.jsoup.select.Selector;
import org.jsoup.select.c;

/* compiled from: Element.java */
@org.jsoup.internal.c
/* loaded from: classes5.dex */
public class g extends k {

    /* renamed from: i  reason: collision with root package name */
    private static final List<g> f91871i = Collections.emptyList();

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f91872j = Pattern.compile("\\s+");

    /* renamed from: k  reason: collision with root package name */
    private static final String f91873k = org.jsoup.nodes.b.B("baseUri");

    /* renamed from: e  reason: collision with root package name */
    private org.jsoup.parser.g f91874e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private WeakReference<List<g>> f91875f;

    /* renamed from: g  reason: collision with root package name */
    List<k> f91876g;
    @r7.h

    /* renamed from: h  reason: collision with root package name */
    private org.jsoup.nodes.b f91877h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Element.java */
    /* loaded from: classes5.dex */
    public class a implements org.jsoup.select.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StringBuilder f91878a;

        a(StringBuilder sb) {
            this.f91878a = sb;
        }

        @Override // org.jsoup.select.e
        public void a(k kVar, int i4) {
            if ((kVar instanceof g) && ((g) kVar).C1() && (kVar.G() instanceof n) && !n.q0(this.f91878a)) {
                this.f91878a.append(' ');
            }
        }

        @Override // org.jsoup.select.e
        public void b(k kVar, int i4) {
            if (kVar instanceof n) {
                g.s0(this.f91878a, (n) kVar);
            } else if (kVar instanceof g) {
                g gVar = (g) kVar;
                if (this.f91878a.length() > 0) {
                    if ((gVar.C1() || gVar.f91874e.l().equals(com.google.android.exoplayer2.text.ttml.d.f25734t)) && !n.q0(this.f91878a)) {
                        this.f91878a.append(' ');
                    }
                }
            }
        }
    }

    /* compiled from: Element.java */
    /* loaded from: classes5.dex */
    class b implements org.jsoup.select.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StringBuilder f91880a;

        b(StringBuilder sb) {
            this.f91880a = sb;
        }

        @Override // org.jsoup.select.e
        public void a(k kVar, int i4) {
        }

        @Override // org.jsoup.select.e
        public void b(k kVar, int i4) {
            if (kVar instanceof n) {
                this.f91880a.append(((n) kVar).o0());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Element.java */
    /* loaded from: classes5.dex */
    public static final class c extends ChangeNotifyingArrayList<k> {

        /* renamed from: a  reason: collision with root package name */
        private final g f91882a;

        c(g gVar, int i4) {
            super(i4);
            this.f91882a = gVar;
        }

        @Override // org.jsoup.helper.ChangeNotifyingArrayList
        public void onContentsChanged() {
            this.f91882a.I();
        }
    }

    public g(String str) {
        this(org.jsoup.parser.g.p(str), "", null);
    }

    private boolean D1(Document.OutputSettings outputSettings) {
        return this.f91874e.b() || (O() != null && O().i2().b()) || outputSettings.k();
    }

    private boolean E1(Document.OutputSettings outputSettings) {
        return (!i2().h() || i2().e() || (O() != null && !O().C1()) || Q() == null || outputSettings.k()) ? false : true;
    }

    private Elements I1(boolean z9) {
        Elements elements = new Elements();
        if (this.f91890a == null) {
            return elements;
        }
        elements.add(this);
        return z9 ? elements.nextAll() : elements.prevAll();
    }

    private void L1(StringBuilder sb) {
        for (int i4 = 0; i4 < o(); i4++) {
            k kVar = this.f91876g.get(i4);
            if (kVar instanceof n) {
                s0(sb, (n) kVar);
            } else if (kVar instanceof g) {
                v0((g) kVar, sb);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean T1(@r7.h k kVar) {
        if (kVar instanceof g) {
            g gVar = (g) kVar;
            int i4 = 0;
            while (!gVar.f91874e.m()) {
                gVar = gVar.O();
                i4++;
                if (i4 < 6) {
                    if (gVar == null) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    private static String Z1(g gVar, String str) {
        while (gVar != null) {
            org.jsoup.nodes.b bVar = gVar.f91877h;
            if (bVar != null && bVar.s(str)) {
                return gVar.f91877h.o(str);
            }
            gVar = gVar.O();
        }
        return "";
    }

    private static void k0(g gVar, Elements elements) {
        g O = gVar.O();
        if (O == null || O.j2().equals("#root")) {
            return;
        }
        elements.add(O);
        k0(O, elements);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void s0(StringBuilder sb, n nVar) {
        String o02 = nVar.o0();
        if (!T1(nVar.f91890a) && !(nVar instanceof org.jsoup.nodes.c)) {
            org.jsoup.internal.f.a(sb, o02, n.q0(sb));
        } else {
            sb.append(o02);
        }
    }

    private static void v0(g gVar, StringBuilder sb) {
        if (!gVar.f91874e.l().equals(com.google.android.exoplayer2.text.ttml.d.f25734t) || n.q0(sb)) {
            return;
        }
        sb.append(" ");
    }

    private static <E extends g> int x1(g gVar, List<E> list) {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (list.get(i4) == gVar) {
                return i4;
            }
        }
        return 0;
    }

    public g A0(int i4) {
        return B0().get(i4);
    }

    public boolean A1(String str) {
        return B1(org.jsoup.select.f.t(str));
    }

    @Override // org.jsoup.nodes.k
    protected boolean B() {
        return this.f91877h != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<g> B0() {
        List<g> list;
        if (o() == 0) {
            return f91871i;
        }
        WeakReference<List<g>> weakReference = this.f91875f;
        if (weakReference == null || (list = weakReference.get()) == null) {
            int size = this.f91876g.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i4 = 0; i4 < size; i4++) {
                k kVar = this.f91876g.get(i4);
                if (kVar instanceof g) {
                    arrayList.add((g) kVar);
                }
            }
            this.f91875f = new WeakReference<>(arrayList);
            return arrayList;
        }
        return list;
    }

    public boolean B1(org.jsoup.select.c cVar) {
        return cVar.a(Y(), this);
    }

    public Elements C0() {
        return new Elements(B0());
    }

    public boolean C1() {
        return this.f91874e.d();
    }

    public int D0() {
        return B0().size();
    }

    @Override // org.jsoup.nodes.k
    public <T extends Appendable> T E(T t9) {
        int size = this.f91876g.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.f91876g.get(i4).K(t9);
        }
        return t9;
    }

    public String E0() {
        return g("class").trim();
    }

    public Set<String> F0() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(f91872j.split(E0())));
        linkedHashSet.remove("");
        return linkedHashSet;
    }

    public g F1() {
        if (O() != null) {
            List<g> B0 = O().B0();
            return B0.size() > 1 ? B0.get(B0.size() - 1) : this;
        }
        return this;
    }

    public g G0(Set<String> set) {
        org.jsoup.helper.d.j(set);
        if (set.isEmpty()) {
            i().J("class");
        } else {
            i().E("class", org.jsoup.internal.f.k(set, " "));
        }
        return this;
    }

    @r7.h
    public g G1() {
        if (this.f91890a == null) {
            return null;
        }
        List<g> B0 = O().B0();
        int x12 = x1(this, B0) + 1;
        if (B0.size() > x12) {
            return B0.get(x12);
        }
        return null;
    }

    @Override // org.jsoup.nodes.k
    public String H() {
        return this.f91874e.c();
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: H0 */
    public g s() {
        if (this.f91877h != null) {
            super.s();
            this.f91877h = null;
        }
        return this;
    }

    public Elements H1() {
        return I1(true);
    }

    @Override // org.jsoup.nodes.k
    void I() {
        super.I();
        this.f91875f = null;
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: I0 */
    public g t() {
        return (g) super.clone();
    }

    @r7.h
    public g J0(String str) {
        return K0(org.jsoup.select.f.t(str));
    }

    public String J1() {
        return this.f91874e.l();
    }

    @r7.h
    public g K0(org.jsoup.select.c cVar) {
        org.jsoup.helper.d.j(cVar);
        g Y = Y();
        g gVar = this;
        while (!cVar.a(Y, gVar)) {
            gVar = gVar.O();
            if (gVar == null) {
                return null;
            }
        }
        return gVar;
    }

    public String K1() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        L1(b10);
        return org.jsoup.internal.f.p(b10).trim();
    }

    @Override // org.jsoup.nodes.k
    void L(Appendable appendable, int i4, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.n() && D1(outputSettings) && !E1(outputSettings)) {
            if (appendable instanceof StringBuilder) {
                if (((StringBuilder) appendable).length() > 0) {
                    F(appendable, i4, outputSettings);
                }
            } else {
                F(appendable, i4, outputSettings);
            }
        }
        appendable.append(Typography.less).append(j2());
        org.jsoup.nodes.b bVar = this.f91877h;
        if (bVar != null) {
            bVar.v(appendable, outputSettings);
        }
        if (this.f91876g.isEmpty() && this.f91874e.k()) {
            if (outputSettings.o() == Document.OutputSettings.Syntax.html && this.f91874e.e()) {
                appendable.append(Typography.greater);
                return;
            } else {
                appendable.append(" />");
                return;
            }
        }
        appendable.append(Typography.greater);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0035, code lost:
        if (r3.get(0) == r5) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String L0() {
        /*
            r5 = this;
            java.lang.String r0 = r5.v1()
            int r0 = r0.length()
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L38
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "#"
            r0.append(r3)
            java.lang.String r3 = r5.v1()
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            org.jsoup.nodes.Document r3 = r5.N()
            if (r3 == 0) goto L37
            org.jsoup.select.Elements r3 = r3.a2(r0)
            int r4 = r3.size()
            if (r4 != r2) goto L38
            java.lang.Object r3 = r3.get(r1)
            if (r3 != r5) goto L38
        L37:
            return r0
        L38:
            java.lang.String r0 = r5.j2()
            r3 = 58
            r4 = 124(0x7c, float:1.74E-43)
            java.lang.String r0 = r0.replace(r3, r4)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r0)
            java.util.Set r0 = r5.F0()
            java.lang.String r4 = "."
            java.lang.String r0 = org.jsoup.internal.f.k(r0, r4)
            int r4 = r0.length()
            if (r4 <= 0) goto L61
            r4 = 46
            r3.append(r4)
            r3.append(r0)
        L61:
            org.jsoup.nodes.g r0 = r5.O()
            if (r0 == 0) goto Lb9
            org.jsoup.nodes.g r0 = r5.O()
            boolean r0 = r0 instanceof org.jsoup.nodes.Document
            if (r0 == 0) goto L70
            goto Lb9
        L70:
            java.lang.String r0 = " > "
            r3.insert(r1, r0)
            org.jsoup.nodes.g r0 = r5.O()
            java.lang.String r4 = r3.toString()
            org.jsoup.select.Elements r0 = r0.a2(r4)
            int r0 = r0.size()
            if (r0 <= r2) goto L9d
            java.lang.Object[] r0 = new java.lang.Object[r2]
            int r4 = r5.Q0()
            int r4 = r4 + r2
            java.lang.Integer r2 = java.lang.Integer.valueOf(r4)
            r0[r1] = r2
            java.lang.String r1 = ":nth-child(%d)"
            java.lang.String r0 = java.lang.String.format(r1, r0)
            r3.append(r0)
        L9d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            org.jsoup.nodes.g r1 = r5.O()
            java.lang.String r1 = r1.L0()
            r0.append(r1)
            java.lang.String r1 = r3.toString()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        Lb9:
            java.lang.String r0 = r3.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.g.L0():java.lang.String");
    }

    @Override // org.jsoup.nodes.k
    void M(Appendable appendable, int i4, Document.OutputSettings outputSettings) throws IOException {
        if (this.f91876g.isEmpty() && this.f91874e.k()) {
            return;
        }
        if (outputSettings.n() && !this.f91876g.isEmpty() && (this.f91874e.b() || (outputSettings.k() && (this.f91876g.size() > 1 || (this.f91876g.size() == 1 && !(this.f91876g.get(0) instanceof n)))))) {
            F(appendable, i4, outputSettings);
        }
        appendable.append("</").append(j2()).append(Typography.greater);
    }

    public String M0() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        for (k kVar : this.f91876g) {
            if (kVar instanceof e) {
                b10.append(((e) kVar).o0());
            } else if (kVar instanceof d) {
                b10.append(((d) kVar).o0());
            } else if (kVar instanceof g) {
                b10.append(((g) kVar).M0());
            } else if (kVar instanceof org.jsoup.nodes.c) {
                b10.append(((org.jsoup.nodes.c) kVar).o0());
            }
        }
        return org.jsoup.internal.f.p(b10);
    }

    @Override // org.jsoup.nodes.k
    @r7.h
    /* renamed from: M1 */
    public final g O() {
        return (g) this.f91890a;
    }

    public List<e> N0() {
        ArrayList arrayList = new ArrayList();
        for (k kVar : this.f91876g) {
            if (kVar instanceof e) {
                arrayList.add((e) kVar);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Elements N1() {
        Elements elements = new Elements();
        k0(this, elements);
        return elements;
    }

    public Map<String, String> O0() {
        return i().m();
    }

    public g O1(String str) {
        org.jsoup.helper.d.j(str);
        b(0, (k[]) l.b(this).k(str, this, k()).toArray(new k[0]));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.nodes.k
    /* renamed from: P0 */
    public g u(@r7.h k kVar) {
        g gVar = (g) super.u(kVar);
        org.jsoup.nodes.b bVar = this.f91877h;
        gVar.f91877h = bVar != null ? bVar.clone() : null;
        c cVar = new c(gVar, this.f91876g.size());
        gVar.f91876g = cVar;
        cVar.addAll(this.f91876g);
        return gVar;
    }

    public g P1(k kVar) {
        org.jsoup.helper.d.j(kVar);
        b(0, kVar);
        return this;
    }

    public int Q0() {
        if (O() == null) {
            return 0;
        }
        return x1(this, O().B0());
    }

    public g Q1(Collection<? extends k> collection) {
        y1(0, collection);
        return this;
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: R0 */
    public g w() {
        this.f91876g.clear();
        return this;
    }

    public g R1(String str) {
        g gVar = new g(org.jsoup.parser.g.q(str, l.b(this).q()), k());
        P1(gVar);
        return gVar;
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: S0 */
    public g y(NodeFilter nodeFilter) {
        return (g) super.y(nodeFilter);
    }

    public g S1(String str) {
        org.jsoup.helper.d.j(str);
        P1(new n(str));
        return this;
    }

    public g T0() {
        if (O() != null) {
            List<g> B0 = O().B0();
            return B0.size() > 1 ? B0.get(0) : this;
        }
        return this;
    }

    public Elements U0() {
        return org.jsoup.select.a.a(new c.a(), this);
    }

    @r7.h
    public g U1() {
        List<g> B0;
        int x12;
        if (this.f91890a != null && (x12 = x1(this, (B0 = O().B0()))) > 0) {
            return B0.get(x12 - 1);
        }
        return null;
    }

    @r7.h
    public g V0(String str) {
        org.jsoup.helper.d.h(str);
        Elements a10 = org.jsoup.select.a.a(new c.p(str), this);
        if (a10.size() > 0) {
            return a10.get(0);
        }
        return null;
    }

    public Elements V1() {
        return I1(false);
    }

    public Elements W0(String str) {
        org.jsoup.helper.d.h(str);
        return org.jsoup.select.a.a(new c.b(str.trim()), this);
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: W1 */
    public g T(String str) {
        return (g) super.T(str);
    }

    public Elements X0(String str) {
        org.jsoup.helper.d.h(str);
        return org.jsoup.select.a.a(new c.d(str.trim()), this);
    }

    public g X1(String str) {
        org.jsoup.helper.d.j(str);
        Set<String> F0 = F0();
        F0.remove(str);
        G0(F0);
        return this;
    }

    public Elements Y0(String str, String str2) {
        return org.jsoup.select.a.a(new c.e(str, str2), this);
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: Y1 */
    public g Y() {
        return (g) super.Y();
    }

    public Elements Z0(String str, String str2) {
        return org.jsoup.select.a.a(new c.f(str, str2), this);
    }

    public Elements a1(String str, String str2) {
        return org.jsoup.select.a.a(new c.g(str, str2), this);
    }

    public Elements a2(String str) {
        return Selector.c(str, this);
    }

    public Elements b1(String str, String str2) {
        try {
            return c1(str, Pattern.compile(str2));
        } catch (PatternSyntaxException e4) {
            throw new IllegalArgumentException("Pattern syntax error: " + str2, e4);
        }
    }

    public Elements b2(org.jsoup.select.c cVar) {
        return Selector.d(cVar, this);
    }

    public Elements c1(String str, Pattern pattern) {
        return org.jsoup.select.a.a(new c.h(str, pattern), this);
    }

    @r7.h
    public g c2(String str) {
        return Selector.e(str, this);
    }

    public Elements d1(String str, String str2) {
        return org.jsoup.select.a.a(new c.i(str, str2), this);
    }

    @r7.h
    public g d2(org.jsoup.select.c cVar) {
        return org.jsoup.select.a.b(cVar, this);
    }

    public Elements e1(String str, String str2) {
        return org.jsoup.select.a.a(new c.j(str, str2), this);
    }

    public <T extends k> List<T> e2(String str, Class<T> cls) {
        return l.c(str, this, cls);
    }

    public Elements f1(String str) {
        org.jsoup.helper.d.h(str);
        return org.jsoup.select.a.a(new c.k(str), this);
    }

    public Elements f2(String str) {
        return new Elements((List<g>) l.c(str, this, g.class));
    }

    public Elements g1(int i4) {
        return org.jsoup.select.a.a(new c.q(i4), this);
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: g2 */
    public g c0() {
        org.jsoup.parser.g gVar = this.f91874e;
        String k10 = k();
        org.jsoup.nodes.b bVar = this.f91877h;
        return new g(gVar, k10, bVar == null ? null : bVar.clone());
    }

    public Elements h1(int i4) {
        return org.jsoup.select.a.a(new c.s(i4), this);
    }

    public Elements h2() {
        if (this.f91890a == null) {
            return new Elements(0);
        }
        List<g> B0 = O().B0();
        Elements elements = new Elements(B0.size() - 1);
        for (g gVar : B0) {
            if (gVar != this) {
                elements.add(gVar);
            }
        }
        return elements;
    }

    @Override // org.jsoup.nodes.k
    public org.jsoup.nodes.b i() {
        if (this.f91877h == null) {
            this.f91877h = new org.jsoup.nodes.b();
        }
        return this.f91877h;
    }

    public Elements i1(int i4) {
        return org.jsoup.select.a.a(new c.t(i4), this);
    }

    public org.jsoup.parser.g i2() {
        return this.f91874e;
    }

    public Elements j1(String str) {
        org.jsoup.helper.d.h(str);
        return org.jsoup.select.a.a(new c.j0(org.jsoup.internal.d.b(str)), this);
    }

    public String j2() {
        return this.f91874e.c();
    }

    @Override // org.jsoup.nodes.k
    public String k() {
        return Z1(this, f91873k);
    }

    public Elements k1(String str) {
        return org.jsoup.select.a.a(new c.m(str), this);
    }

    public g k2(String str) {
        org.jsoup.helper.d.i(str, "Tag name must not be empty.");
        this.f91874e = org.jsoup.parser.g.q(str, l.b(this).q());
        return this;
    }

    public g l0(String str) {
        org.jsoup.helper.d.j(str);
        Set<String> F0 = F0();
        F0.add(str);
        G0(F0);
        return this;
    }

    public Elements l1(String str) {
        return org.jsoup.select.a.a(new c.n(str), this);
    }

    public String l2() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        org.jsoup.select.d.c(new a(b10), this);
        return org.jsoup.internal.f.p(b10).trim();
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: m0 */
    public g e(String str) {
        return (g) super.e(str);
    }

    public Elements m1(String str) {
        try {
            return n1(Pattern.compile(str));
        } catch (PatternSyntaxException e4) {
            throw new IllegalArgumentException("Pattern syntax error: " + str, e4);
        }
    }

    public g m2(String str) {
        org.jsoup.helper.d.j(str);
        w();
        Document N = N();
        if (N != null && N.N2().d(J1())) {
            p0(new e(str));
        } else {
            p0(new n(str));
        }
        return this;
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: n0 */
    public g f(k kVar) {
        return (g) super.f(kVar);
    }

    public Elements n1(Pattern pattern) {
        return org.jsoup.select.a.a(new c.i0(pattern), this);
    }

    public List<n> n2() {
        ArrayList arrayList = new ArrayList();
        for (k kVar : this.f91876g) {
            if (kVar instanceof n) {
                arrayList.add((n) kVar);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // org.jsoup.nodes.k
    public int o() {
        return this.f91876g.size();
    }

    public g o0(String str) {
        org.jsoup.helper.d.j(str);
        c((k[]) l.b(this).k(str, this, k()).toArray(new k[0]));
        return this;
    }

    public Elements o1(String str) {
        try {
            return p1(Pattern.compile(str));
        } catch (PatternSyntaxException e4) {
            throw new IllegalArgumentException("Pattern syntax error: " + str, e4);
        }
    }

    public g o2(String str) {
        org.jsoup.helper.d.j(str);
        Set<String> F0 = F0();
        if (F0.contains(str)) {
            F0.remove(str);
        } else {
            F0.add(str);
        }
        G0(F0);
        return this;
    }

    public g p0(k kVar) {
        org.jsoup.helper.d.j(kVar);
        V(kVar);
        x();
        this.f91876g.add(kVar);
        kVar.b0(this.f91876g.size() - 1);
        return this;
    }

    public Elements p1(Pattern pattern) {
        return org.jsoup.select.a.a(new c.h0(pattern), this);
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: p2 */
    public g f0(org.jsoup.select.e eVar) {
        return (g) super.f0(eVar);
    }

    public g q0(Collection<? extends k> collection) {
        y1(-1, collection);
        return this;
    }

    protected boolean q1() {
        return this.f91876g != k.f91888c;
    }

    public String q2() {
        if (J1().equals("textarea")) {
            return l2();
        }
        return g("value");
    }

    public g r0(String str) {
        g gVar = new g(org.jsoup.parser.g.q(str, l.b(this).q()), k());
        p0(gVar);
        return gVar;
    }

    public boolean r1(String str) {
        org.jsoup.nodes.b bVar = this.f91877h;
        if (bVar == null) {
            return false;
        }
        String p9 = bVar.p("class");
        int length = p9.length();
        int length2 = str.length();
        if (length != 0 && length >= length2) {
            if (length == length2) {
                return str.equalsIgnoreCase(p9);
            }
            boolean z9 = false;
            int i4 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                if (Character.isWhitespace(p9.charAt(i10))) {
                    if (!z9) {
                        continue;
                    } else if (i10 - i4 == length2 && p9.regionMatches(true, i4, str, 0, length2)) {
                        return true;
                    } else {
                        z9 = false;
                    }
                } else if (!z9) {
                    i4 = i10;
                    z9 = true;
                }
            }
            if (z9 && length - i4 == length2) {
                return p9.regionMatches(true, i4, str, 0, length2);
            }
        }
        return false;
    }

    public g r2(String str) {
        if (J1().equals("textarea")) {
            m2(str);
        } else {
            h("value", str);
        }
        return this;
    }

    public boolean s1() {
        for (k kVar : this.f91876g) {
            if (kVar instanceof n) {
                if (!((n) kVar).p0()) {
                    return true;
                }
            } else if ((kVar instanceof g) && ((g) kVar).s1()) {
                return true;
            }
        }
        return false;
    }

    public String s2() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        org.jsoup.select.d.c(new b(b10), this);
        return org.jsoup.internal.f.p(b10);
    }

    public g t0(String str) {
        org.jsoup.helper.d.j(str);
        p0(new n(str));
        return this;
    }

    public String t1() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        E(b10);
        String p9 = org.jsoup.internal.f.p(b10);
        return l.a(this).n() ? p9.trim() : p9;
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: t2 */
    public g h0(String str) {
        return (g) super.h0(str);
    }

    public g u0(g gVar) {
        org.jsoup.helper.d.j(gVar);
        gVar.p0(this);
        return this;
    }

    public g u1(String str) {
        w();
        o0(str);
        return this;
    }

    @Override // org.jsoup.nodes.k
    protected void v(String str) {
        i().E(f91873k, str);
    }

    public String v1() {
        org.jsoup.nodes.b bVar = this.f91877h;
        return bVar != null ? bVar.p("id") : "";
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: w0 */
    public g h(String str, String str2) {
        super.h(str, str2);
        return this;
    }

    public g w1(String str) {
        org.jsoup.helper.d.j(str);
        h("id", str);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.nodes.k
    public List<k> x() {
        if (this.f91876g == k.f91888c) {
            this.f91876g = new c(this, 4);
        }
        return this.f91876g;
    }

    public g x0(String str, boolean z9) {
        i().F(str, z9);
        return this;
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: y0 */
    public g l(String str) {
        return (g) super.l(str);
    }

    public g y1(int i4, Collection<? extends k> collection) {
        org.jsoup.helper.d.k(collection, "Children collection to be inserted must not be null.");
        int o9 = o();
        if (i4 < 0) {
            i4 += o9 + 1;
        }
        org.jsoup.helper.d.e(i4 >= 0 && i4 <= o9, "Insert position out of bounds.");
        b(i4, (k[]) new ArrayList(collection).toArray(new k[0]));
        return this;
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: z0 */
    public g m(k kVar) {
        return (g) super.m(kVar);
    }

    public g z1(int i4, k... kVarArr) {
        org.jsoup.helper.d.k(kVarArr, "Children collection to be inserted must not be null.");
        int o9 = o();
        if (i4 < 0) {
            i4 += o9 + 1;
        }
        org.jsoup.helper.d.e(i4 >= 0 && i4 <= o9, "Insert position out of bounds.");
        b(i4, kVarArr);
        return this;
    }

    public g(org.jsoup.parser.g gVar, @r7.h String str, @r7.h org.jsoup.nodes.b bVar) {
        org.jsoup.helper.d.j(gVar);
        this.f91876g = k.f91888c;
        this.f91877h = bVar;
        this.f91874e = gVar;
        if (str != null) {
            Z(str);
        }
    }

    public g(org.jsoup.parser.g gVar, @r7.h String str) {
        this(gVar, str, null);
    }
}
