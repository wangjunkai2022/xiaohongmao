package org.jsoup.nodes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.SerializationException;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.jsoup.select.NodeFilter;

/* compiled from: Node.java */
/* loaded from: classes5.dex */
public abstract class k implements Cloneable {

    /* renamed from: c  reason: collision with root package name */
    static final List<k> f91888c = Collections.emptyList();

    /* renamed from: d  reason: collision with root package name */
    static final String f91889d = "";
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    k f91890a;

    /* renamed from: b  reason: collision with root package name */
    int f91891b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Node.java */
    /* loaded from: classes5.dex */
    public static class a implements org.jsoup.select.e {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f91892a;

        /* renamed from: b  reason: collision with root package name */
        private final Document.OutputSettings f91893b;

        a(Appendable appendable, Document.OutputSettings outputSettings) {
            this.f91892a = appendable;
            this.f91893b = outputSettings;
            outputSettings.l();
        }

        @Override // org.jsoup.select.e
        public void a(k kVar, int i4) {
            if (kVar.H().equals("#text")) {
                return;
            }
            try {
                kVar.M(this.f91892a, i4, this.f91893b);
            } catch (IOException e4) {
                throw new SerializationException(e4);
            }
        }

        @Override // org.jsoup.select.e
        public void b(k kVar, int i4) {
            try {
                kVar.L(this.f91892a, i4, this.f91893b);
            } catch (IOException e4) {
                throw new SerializationException(e4);
            }
        }
    }

    private void R(int i4) {
        if (o() == 0) {
            return;
        }
        List<k> x9 = x();
        while (i4 < x9.size()) {
            x9.get(i4).b0(i4);
            i4++;
        }
    }

    private void d(int i4, String str) {
        org.jsoup.helper.d.j(str);
        org.jsoup.helper.d.j(this.f91890a);
        this.f91890a.b(i4, (k[]) l.b(this).k(str, O() instanceof g ? (g) O() : null, k()).toArray(new k[0]));
    }

    private g z(g gVar) {
        Elements C0 = gVar.C0();
        return C0.size() > 0 ? z(C0.get(0)) : gVar;
    }

    public boolean A(String str) {
        org.jsoup.helper.d.j(str);
        if (B()) {
            if (str.startsWith("abs:")) {
                String substring = str.substring(4);
                if (i().t(substring) && !a(substring).isEmpty()) {
                    return true;
                }
            }
            return i().t(str);
        }
        return false;
    }

    protected abstract boolean B();

    public boolean C() {
        return this.f91890a != null;
    }

    public boolean D(@r7.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return J().equals(((k) obj).J());
    }

    public <T extends Appendable> T E(T t9) {
        K(t9);
        return t9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void F(Appendable appendable, int i4, Document.OutputSettings outputSettings) throws IOException {
        appendable.append('\n').append(org.jsoup.internal.f.o(i4 * outputSettings.h()));
    }

    @r7.h
    public k G() {
        k kVar = this.f91890a;
        if (kVar == null) {
            return null;
        }
        List<k> x9 = kVar.x();
        int i4 = this.f91891b + 1;
        if (x9.size() > i4) {
            return x9.get(i4);
        }
        return null;
    }

    public abstract String H();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I() {
    }

    public String J() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        K(b10);
        return org.jsoup.internal.f.p(b10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void K(Appendable appendable) {
        org.jsoup.select.d.c(new a(appendable, l.a(this)), this);
    }

    abstract void L(Appendable appendable, int i4, Document.OutputSettings outputSettings) throws IOException;

    abstract void M(Appendable appendable, int i4, Document.OutputSettings outputSettings) throws IOException;

    @r7.h
    public Document N() {
        k Y = Y();
        if (Y instanceof Document) {
            return (Document) Y;
        }
        return null;
    }

    @r7.h
    public k O() {
        return this.f91890a;
    }

    @r7.h
    public final k P() {
        return this.f91890a;
    }

    @r7.h
    public k Q() {
        k kVar = this.f91890a;
        if (kVar != null && this.f91891b > 0) {
            return kVar.x().get(this.f91891b - 1);
        }
        return null;
    }

    public void S() {
        org.jsoup.helper.d.j(this.f91890a);
        this.f91890a.U(this);
    }

    public k T(String str) {
        org.jsoup.helper.d.j(str);
        if (B()) {
            i().K(str);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void U(k kVar) {
        org.jsoup.helper.d.d(kVar.f91890a == this);
        int i4 = kVar.f91891b;
        x().remove(i4);
        R(i4);
        kVar.f91890a = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void V(k kVar) {
        kVar.a0(this);
    }

    protected void W(k kVar, k kVar2) {
        org.jsoup.helper.d.d(kVar.f91890a == this);
        org.jsoup.helper.d.j(kVar2);
        k kVar3 = kVar2.f91890a;
        if (kVar3 != null) {
            kVar3.U(kVar2);
        }
        int i4 = kVar.f91891b;
        x().set(i4, kVar2);
        kVar2.f91890a = this;
        kVar2.b0(i4);
        kVar.f91890a = null;
    }

    public void X(k kVar) {
        org.jsoup.helper.d.j(kVar);
        org.jsoup.helper.d.j(this.f91890a);
        this.f91890a.W(this, kVar);
    }

    public k Y() {
        k kVar = this;
        while (true) {
            k kVar2 = kVar.f91890a;
            if (kVar2 == null) {
                return kVar;
            }
            kVar = kVar2;
        }
    }

    public void Z(String str) {
        org.jsoup.helper.d.j(str);
        v(str);
    }

    public String a(String str) {
        org.jsoup.helper.d.h(str);
        return (B() && i().t(str)) ? org.jsoup.internal.f.q(k(), i().p(str)) : "";
    }

    protected void a0(k kVar) {
        org.jsoup.helper.d.j(kVar);
        k kVar2 = this.f91890a;
        if (kVar2 != null) {
            kVar2.U(this);
        }
        this.f91890a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(int i4, k... kVarArr) {
        boolean z9;
        org.jsoup.helper.d.j(kVarArr);
        if (kVarArr.length == 0) {
            return;
        }
        List<k> x9 = x();
        k O = kVarArr[0].O();
        if (O != null && O.o() == kVarArr.length) {
            List<k> x10 = O.x();
            int length = kVarArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    z9 = true;
                    break;
                } else if (kVarArr[i10] != x10.get(i10)) {
                    z9 = false;
                    break;
                } else {
                    length = i10;
                }
            }
            if (z9) {
                boolean z10 = o() == 0;
                O.w();
                x9.addAll(i4, Arrays.asList(kVarArr));
                int length2 = kVarArr.length;
                while (true) {
                    int i11 = length2 - 1;
                    if (length2 <= 0) {
                        break;
                    }
                    kVarArr[i11].f91890a = this;
                    length2 = i11;
                }
                if (z10 && kVarArr[0].f91891b == 0) {
                    return;
                }
                R(i4);
                return;
            }
        }
        org.jsoup.helper.d.f(kVarArr);
        for (k kVar : kVarArr) {
            V(kVar);
        }
        x9.addAll(i4, Arrays.asList(kVarArr));
        R(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b0(int i4) {
        this.f91891b = i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(k... kVarArr) {
        List<k> x9 = x();
        for (k kVar : kVarArr) {
            V(kVar);
            x9.add(kVar);
            kVar.b0(x9.size() - 1);
        }
    }

    public k c0() {
        return u(null);
    }

    public int d0() {
        return this.f91891b;
    }

    public k e(String str) {
        d(this.f91891b + 1, str);
        return this;
    }

    public List<k> e0() {
        k kVar = this.f91890a;
        if (kVar == null) {
            return Collections.emptyList();
        }
        List<k> x9 = kVar.x();
        ArrayList arrayList = new ArrayList(x9.size() - 1);
        for (k kVar2 : x9) {
            if (kVar2 != this) {
                arrayList.add(kVar2);
            }
        }
        return arrayList;
    }

    public boolean equals(@r7.h Object obj) {
        return this == obj;
    }

    public k f(k kVar) {
        org.jsoup.helper.d.j(kVar);
        org.jsoup.helper.d.j(this.f91890a);
        this.f91890a.b(this.f91891b + 1, kVar);
        return this;
    }

    public k f0(org.jsoup.select.e eVar) {
        org.jsoup.helper.d.j(eVar);
        org.jsoup.select.d.c(eVar, this);
        return this;
    }

    public String g(String str) {
        org.jsoup.helper.d.j(str);
        if (B()) {
            String p9 = i().p(str);
            return p9.length() > 0 ? p9 : str.startsWith("abs:") ? a(str.substring(4)) : "";
        }
        return "";
    }

    @r7.h
    public k g0() {
        org.jsoup.helper.d.j(this.f91890a);
        List<k> x9 = x();
        k kVar = x9.size() > 0 ? x9.get(0) : null;
        this.f91890a.b(this.f91891b, q());
        S();
        return kVar;
    }

    public k h(String str, String str2) {
        i().H(l.b(this).q().b(str), str2);
        return this;
    }

    public k h0(String str) {
        g gVar;
        org.jsoup.helper.d.h(str);
        k kVar = this.f91890a;
        if (kVar == null || !(kVar instanceof g)) {
            gVar = this instanceof g ? (g) this : null;
        } else {
            gVar = (g) kVar;
        }
        List<k> k10 = l.b(this).k(str, gVar, k());
        k kVar2 = k10.get(0);
        if (kVar2 instanceof g) {
            g gVar2 = (g) kVar2;
            g z9 = z(gVar2);
            k kVar3 = this.f91890a;
            if (kVar3 != null) {
                kVar3.W(this, gVar2);
            }
            z9.c(this);
            if (k10.size() > 0) {
                for (int i4 = 0; i4 < k10.size(); i4++) {
                    k kVar4 = k10.get(i4);
                    if (gVar2 != kVar4) {
                        k kVar5 = kVar4.f91890a;
                        if (kVar5 != null) {
                            kVar5.U(kVar4);
                        }
                        gVar2.f(kVar4);
                    }
                }
            }
            return this;
        }
        return this;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public abstract b i();

    public int j() {
        if (B()) {
            return i().size();
        }
        return 0;
    }

    public abstract String k();

    public k l(String str) {
        d(this.f91891b, str);
        return this;
    }

    public k m(k kVar) {
        org.jsoup.helper.d.j(kVar);
        org.jsoup.helper.d.j(this.f91890a);
        this.f91890a.b(this.f91891b, kVar);
        return this;
    }

    public k n(int i4) {
        return x().get(i4);
    }

    public abstract int o();

    public List<k> p() {
        if (o() == 0) {
            return f91888c;
        }
        List<k> x9 = x();
        ArrayList arrayList = new ArrayList(x9.size());
        arrayList.addAll(x9);
        return Collections.unmodifiableList(arrayList);
    }

    protected k[] q() {
        return (k[]) x().toArray(new k[0]);
    }

    public List<k> r() {
        List<k> x9 = x();
        ArrayList arrayList = new ArrayList(x9.size());
        for (k kVar : x9) {
            arrayList.add(kVar.clone());
        }
        return arrayList;
    }

    public k s() {
        if (B()) {
            Iterator<org.jsoup.nodes.a> it = i().iterator();
            while (it.hasNext()) {
                it.next();
                it.remove();
            }
        }
        return this;
    }

    @Override // 
    /* renamed from: t */
    public k clone() {
        k u9 = u(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(u9);
        while (!linkedList.isEmpty()) {
            k kVar = (k) linkedList.remove();
            int o9 = kVar.o();
            for (int i4 = 0; i4 < o9; i4++) {
                List<k> x9 = kVar.x();
                k u10 = x9.get(i4).u(kVar);
                x9.set(i4, u10);
                linkedList.add(u10);
            }
        }
        return u9;
    }

    public String toString() {
        return J();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k u(@r7.h k kVar) {
        try {
            k kVar2 = (k) super.clone();
            kVar2.f91890a = kVar;
            kVar2.f91891b = kVar == null ? 0 : this.f91891b;
            return kVar2;
        } catch (CloneNotSupportedException e4) {
            throw new RuntimeException(e4);
        }
    }

    protected abstract void v(String str);

    public abstract k w();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract List<k> x();

    public k y(NodeFilter nodeFilter) {
        org.jsoup.helper.d.j(nodeFilter);
        org.jsoup.select.d.a(nodeFilter, this);
        return this;
    }
}
