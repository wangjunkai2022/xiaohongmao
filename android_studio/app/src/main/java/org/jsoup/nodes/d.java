package org.jsoup.nodes;

import org.jsoup.nodes.Document;

/* compiled from: Comment.java */
/* loaded from: classes5.dex */
public class d extends j {
    public d(String str) {
        this.f91887e = str;
    }

    private static boolean q0(String str) {
        return str.length() > 1 && (str.startsWith("!") || str.startsWith("?"));
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ boolean A(String str) {
        return super.A(str);
    }

    @Override // org.jsoup.nodes.k
    public String H() {
        return "#comment";
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
        if (r5.k() != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
        F(r3, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (((org.jsoup.nodes.g) r0).i2().b() != false) goto L9;
     */
    @Override // org.jsoup.nodes.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void L(java.lang.Appendable r3, int r4, org.jsoup.nodes.Document.OutputSettings r5) throws java.io.IOException {
        /*
            r2 = this;
            boolean r0 = r5.n()
            if (r0 == 0) goto L27
            int r0 = r2.d0()
            if (r0 != 0) goto L1e
            org.jsoup.nodes.k r0 = r2.f91890a
            boolean r1 = r0 instanceof org.jsoup.nodes.g
            if (r1 == 0) goto L1e
            org.jsoup.nodes.g r0 = (org.jsoup.nodes.g) r0
            org.jsoup.parser.g r0 = r0.i2()
            boolean r0 = r0.b()
            if (r0 != 0) goto L24
        L1e:
            boolean r0 = r5.k()
            if (r0 == 0) goto L27
        L24:
            r2.F(r3, r4, r5)
        L27:
            java.lang.String r4 = "<!--"
            java.lang.Appendable r3 = r3.append(r4)
            java.lang.String r4 = r2.o0()
            java.lang.Appendable r3 = r3.append(r4)
            java.lang.String r4 = "-->"
            r3.append(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.d.L(java.lang.Appendable, int, org.jsoup.nodes.Document$OutputSettings):void");
    }

    @Override // org.jsoup.nodes.k
    void M(Appendable appendable, int i4, Document.OutputSettings outputSettings) {
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ k T(String str) {
        return super.T(str);
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ String a(String str) {
        return super.a(str);
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ String g(String str) {
        return super.g(str);
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ k h(String str, String str2) {
        return super.h(str, str2);
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ String k() {
        return super.k();
    }

    @r7.h
    public o m0() {
        String o02 = o0();
        String substring = o02.substring(1, o02.length() - 1);
        if (q0(substring)) {
            return null;
        }
        Document m9 = org.jsoup.parser.f.c().r(org.jsoup.parser.e.f92012d).m("<" + substring + ">", k());
        if (m9.u2().C0().size() > 0) {
            g A0 = m9.u2().A0(0);
            o oVar = new o(l.b(m9).q().d(A0.j2()), o02.startsWith("!"));
            oVar.i().f(A0.i());
            return oVar;
        }
        return null;
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: n0 */
    public d t() {
        return (d) super.clone();
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ int o() {
        return super.o();
    }

    public String o0() {
        return i0();
    }

    public boolean p0() {
        return q0(o0());
    }

    public d r0(String str) {
        j0(str);
        return this;
    }

    @Override // org.jsoup.nodes.k
    public String toString() {
        return J();
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ k w() {
        return super.w();
    }
}
