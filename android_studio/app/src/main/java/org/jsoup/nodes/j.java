package org.jsoup.nodes;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LeafNode.java */
/* loaded from: classes5.dex */
public abstract class j extends k {

    /* renamed from: e  reason: collision with root package name */
    Object f91887e;

    private void l0() {
        if (B()) {
            return;
        }
        Object obj = this.f91887e;
        b bVar = new b();
        this.f91887e = bVar;
        if (obj != null) {
            bVar.E(H(), (String) obj);
        }
    }

    @Override // org.jsoup.nodes.k
    public boolean A(String str) {
        l0();
        return super.A(str);
    }

    @Override // org.jsoup.nodes.k
    protected final boolean B() {
        return this.f91887e instanceof b;
    }

    @Override // org.jsoup.nodes.k
    public k T(String str) {
        l0();
        return super.T(str);
    }

    @Override // org.jsoup.nodes.k
    public String a(String str) {
        l0();
        return super.a(str);
    }

    @Override // org.jsoup.nodes.k
    public String g(String str) {
        org.jsoup.helper.d.j(str);
        if (B()) {
            return super.g(str);
        }
        return str.equals(H()) ? (String) this.f91887e : "";
    }

    @Override // org.jsoup.nodes.k
    public k h(String str, String str2) {
        if (!B() && str.equals(H())) {
            this.f91887e = str2;
        } else {
            l0();
            super.h(str, str2);
        }
        return this;
    }

    @Override // org.jsoup.nodes.k
    public final b i() {
        l0();
        return (b) this.f91887e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String i0() {
        return g(H());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j0(String str) {
        h(H(), str);
    }

    @Override // org.jsoup.nodes.k
    public String k() {
        return C() ? O().k() : "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.nodes.k
    /* renamed from: k0 */
    public j u(k kVar) {
        j jVar = (j) super.u(kVar);
        if (B()) {
            jVar.f91887e = ((b) this.f91887e).clone();
        }
        return jVar;
    }

    @Override // org.jsoup.nodes.k
    public int o() {
        return 0;
    }

    @Override // org.jsoup.nodes.k
    protected void v(String str) {
    }

    @Override // org.jsoup.nodes.k
    public k w() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.nodes.k
    public List<k> x() {
        return k.f91888c;
    }
}
