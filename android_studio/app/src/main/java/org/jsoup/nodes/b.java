package org.jsoup.nodes;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jsoup.SerializationException;
import org.jsoup.nodes.Document;

/* compiled from: Attributes.java */
/* loaded from: classes5.dex */
public class b implements Iterable<org.jsoup.nodes.a>, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    protected static final String f91849d = "data-";

    /* renamed from: e  reason: collision with root package name */
    static final char f91850e = '/';

    /* renamed from: f  reason: collision with root package name */
    private static final int f91851f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final int f91852g = 2;

    /* renamed from: h  reason: collision with root package name */
    static final int f91853h = -1;

    /* renamed from: i  reason: collision with root package name */
    private static final String f91854i = "";

    /* renamed from: a  reason: collision with root package name */
    private int f91855a = 0;

    /* renamed from: b  reason: collision with root package name */
    String[] f91856b = new String[3];

    /* renamed from: c  reason: collision with root package name */
    String[] f91857c = new String[3];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Attributes.java */
    /* loaded from: classes5.dex */
    public class a implements Iterator<org.jsoup.nodes.a> {

        /* renamed from: a  reason: collision with root package name */
        int f91858a = 0;

        a() {
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public org.jsoup.nodes.a next() {
            b bVar = b.this;
            String[] strArr = bVar.f91856b;
            int i4 = this.f91858a;
            org.jsoup.nodes.a aVar = new org.jsoup.nodes.a(strArr[i4], bVar.f91857c[i4], bVar);
            this.f91858a++;
            return aVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (this.f91858a < b.this.f91855a) {
                b bVar = b.this;
                if (!bVar.C(bVar.f91856b[this.f91858a])) {
                    break;
                }
                this.f91858a++;
            }
            return this.f91858a < b.this.f91855a;
        }

        @Override // java.util.Iterator
        public void remove() {
            b bVar = b.this;
            int i4 = this.f91858a - 1;
            this.f91858a = i4;
            bVar.I(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Attributes.java */
    /* renamed from: org.jsoup.nodes.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0797b extends AbstractMap<String, String> {

        /* renamed from: a  reason: collision with root package name */
        private final b f91860a;

        /* compiled from: Attributes.java */
        /* renamed from: org.jsoup.nodes.b$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        private class C0798b extends AbstractSet<Map.Entry<String, String>> {
            private C0798b() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<String, String>> iterator() {
                return new a(C0797b.this, null);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                int i4 = 0;
                while (new a(C0797b.this, null).hasNext()) {
                    i4++;
                }
                return i4;
            }

            /* synthetic */ C0798b(C0797b c0797b, a aVar) {
                this();
            }
        }

        /* synthetic */ C0797b(b bVar, a aVar) {
            this(bVar);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: b */
        public String put(String str, String str2) {
            String l10 = b.l(str);
            String o9 = this.f91860a.s(l10) ? this.f91860a.o(l10) : null;
            this.f91860a.E(l10, str2);
            return o9;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<String, String>> entrySet() {
            return new C0798b(this, null);
        }

        /* compiled from: Attributes.java */
        /* renamed from: org.jsoup.nodes.b$b$a */
        /* loaded from: classes5.dex */
        private class a implements Iterator<Map.Entry<String, String>> {

            /* renamed from: a  reason: collision with root package name */
            private Iterator<org.jsoup.nodes.a> f91861a;

            /* renamed from: b  reason: collision with root package name */
            private org.jsoup.nodes.a f91862b;

            private a() {
                this.f91861a = C0797b.this.f91860a.iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Map.Entry<String, String> next() {
                return new org.jsoup.nodes.a(this.f91862b.getKey().substring(5), this.f91862b.getValue());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                while (this.f91861a.hasNext()) {
                    org.jsoup.nodes.a next = this.f91861a.next();
                    this.f91862b = next;
                    if (next.l()) {
                        return true;
                    }
                }
                return false;
            }

            @Override // java.util.Iterator
            public void remove() {
                C0797b.this.f91860a.J(this.f91862b.getKey());
            }

            /* synthetic */ a(C0797b c0797b, a aVar) {
                this();
            }
        }

        private C0797b(b bVar) {
            this.f91860a = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String B(String str) {
        return '/' + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean C(String str) {
        return str != null && str.length() > 1 && str.charAt(0) == '/';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(int i4) {
        org.jsoup.helper.d.b(i4 >= this.f91855a);
        int i10 = (this.f91855a - i4) - 1;
        if (i10 > 0) {
            String[] strArr = this.f91856b;
            int i11 = i4 + 1;
            System.arraycopy(strArr, i11, strArr, i4, i10);
            String[] strArr2 = this.f91857c;
            System.arraycopy(strArr2, i11, strArr2, i4, i10);
        }
        int i12 = this.f91855a - 1;
        this.f91855a = i12;
        this.f91856b[i12] = null;
        this.f91857c[i12] = null;
    }

    private void h(int i4) {
        org.jsoup.helper.d.d(i4 >= this.f91855a);
        String[] strArr = this.f91856b;
        int length = strArr.length;
        if (length >= i4) {
            return;
        }
        int i10 = length >= 3 ? this.f91855a * 2 : 3;
        if (i4 <= i10) {
            i4 = i10;
        }
        this.f91856b = (String[]) Arrays.copyOf(strArr, i4);
        this.f91857c = (String[]) Arrays.copyOf(this.f91857c, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String j(@r7.h String str) {
        return str == null ? "" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String l(String str) {
        return f91849d + str;
    }

    private int z(String str) {
        org.jsoup.helper.d.j(str);
        for (int i4 = 0; i4 < this.f91855a; i4++) {
            if (str.equalsIgnoreCase(this.f91856b[i4])) {
                return i4;
            }
        }
        return -1;
    }

    public void D() {
        for (int i4 = 0; i4 < this.f91855a; i4++) {
            String[] strArr = this.f91856b;
            strArr[i4] = org.jsoup.internal.d.a(strArr[i4]);
        }
    }

    public b E(String str, @r7.h String str2) {
        org.jsoup.helper.d.j(str);
        int w9 = w(str);
        if (w9 != -1) {
            this.f91857c[w9] = str2;
        } else {
            e(str, str2);
        }
        return this;
    }

    public b F(String str, boolean z9) {
        if (z9) {
            H(str, null);
        } else {
            J(str);
        }
        return this;
    }

    public b G(org.jsoup.nodes.a aVar) {
        org.jsoup.helper.d.j(aVar);
        E(aVar.getKey(), aVar.getValue());
        aVar.f91848c = this;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void H(String str, @r7.h String str2) {
        int z9 = z(str);
        if (z9 != -1) {
            this.f91857c[z9] = str2;
            if (this.f91856b[z9].equals(str)) {
                return;
            }
            this.f91856b[z9] = str;
            return;
        }
        e(str, str2);
    }

    public void J(String str) {
        int w9 = w(str);
        if (w9 != -1) {
            I(w9);
        }
    }

    public void K(String str) {
        int z9 = z(str);
        if (z9 != -1) {
            I(z9);
        }
    }

    public b e(String str, @r7.h String str2) {
        h(this.f91855a + 1);
        String[] strArr = this.f91856b;
        int i4 = this.f91855a;
        strArr[i4] = str;
        this.f91857c[i4] = str2;
        this.f91855a = i4 + 1;
        return this;
    }

    public boolean equals(@r7.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f91855a != bVar.f91855a) {
            return false;
        }
        for (int i4 = 0; i4 < this.f91855a; i4++) {
            int w9 = bVar.w(this.f91856b[i4]);
            if (w9 == -1) {
                return false;
            }
            String str = this.f91857c[i4];
            String str2 = bVar.f91857c[w9];
            if (str == null) {
                if (str2 != null) {
                    return false;
                }
            } else if (!str.equals(str2)) {
                return false;
            }
        }
        return true;
    }

    public void f(b bVar) {
        if (bVar.size() == 0) {
            return;
        }
        h(this.f91855a + bVar.f91855a);
        Iterator<org.jsoup.nodes.a> it = bVar.iterator();
        while (it.hasNext()) {
            G(it.next());
        }
    }

    public List<org.jsoup.nodes.a> g() {
        ArrayList arrayList = new ArrayList(this.f91855a);
        for (int i4 = 0; i4 < this.f91855a; i4++) {
            if (!C(this.f91856b[i4])) {
                arrayList.add(new org.jsoup.nodes.a(this.f91856b[i4], this.f91857c[i4], this));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int hashCode() {
        return (((this.f91855a * 31) + Arrays.hashCode(this.f91856b)) * 31) + Arrays.hashCode(this.f91857c);
    }

    public boolean isEmpty() {
        return this.f91855a == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<org.jsoup.nodes.a> iterator() {
        return new a();
    }

    /* renamed from: k */
    public b clone() {
        try {
            b bVar = (b) super.clone();
            bVar.f91855a = this.f91855a;
            this.f91856b = (String[]) Arrays.copyOf(this.f91856b, this.f91855a);
            this.f91857c = (String[]) Arrays.copyOf(this.f91857c, this.f91855a);
            return bVar;
        } catch (CloneNotSupportedException e4) {
            throw new RuntimeException(e4);
        }
    }

    public Map<String, String> m() {
        return new C0797b(this, null);
    }

    public int n(org.jsoup.parser.e eVar) {
        int i4 = 0;
        if (isEmpty()) {
            return 0;
        }
        boolean e4 = eVar.e();
        int i10 = 0;
        while (i4 < this.f91856b.length) {
            int i11 = i4 + 1;
            int i12 = i11;
            while (true) {
                String[] strArr = this.f91856b;
                if (i12 < strArr.length && strArr[i12] != null) {
                    if (!e4 || !strArr[i4].equals(strArr[i12])) {
                        if (!e4) {
                            String[] strArr2 = this.f91856b;
                            if (!strArr2[i4].equalsIgnoreCase(strArr2[i12])) {
                            }
                        }
                        i12++;
                    }
                    i10++;
                    I(i12);
                    i12--;
                    i12++;
                }
            }
            i4 = i11;
        }
        return i10;
    }

    public String o(String str) {
        int w9 = w(str);
        return w9 == -1 ? "" : j(this.f91857c[w9]);
    }

    public String p(String str) {
        int z9 = z(str);
        return z9 == -1 ? "" : j(this.f91857c[z9]);
    }

    public boolean q(String str) {
        int w9 = w(str);
        return (w9 == -1 || this.f91857c[w9] == null) ? false : true;
    }

    public boolean r(String str) {
        int z9 = z(str);
        return (z9 == -1 || this.f91857c[z9] == null) ? false : true;
    }

    public boolean s(String str) {
        return w(str) != -1;
    }

    public int size() {
        return this.f91855a;
    }

    public boolean t(String str) {
        return z(str) != -1;
    }

    public String toString() {
        return u();
    }

    public String u() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        try {
            v(b10, new Document("").K2());
            return org.jsoup.internal.f.p(b10);
        } catch (IOException e4) {
            throw new SerializationException(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void v(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        String d4;
        int i4 = this.f91855a;
        for (int i10 = 0; i10 < i4; i10++) {
            if (!C(this.f91856b[i10]) && (d4 = org.jsoup.nodes.a.d(this.f91856b[i10], outputSettings.o())) != null) {
                org.jsoup.nodes.a.j(d4, this.f91857c[i10], appendable.append(' '), outputSettings);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int w(String str) {
        org.jsoup.helper.d.j(str);
        for (int i4 = 0; i4 < this.f91855a; i4++) {
            if (str.equals(this.f91856b[i4])) {
                return i4;
            }
        }
        return -1;
    }
}
