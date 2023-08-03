package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

/* compiled from: CombiningEvaluator.java */
/* loaded from: classes5.dex */
public abstract class b extends c {

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<c> f92129a;

    /* renamed from: b  reason: collision with root package name */
    int f92130b;

    /* compiled from: CombiningEvaluator.java */
    /* loaded from: classes5.dex */
    public static final class a extends b {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Collection<c> collection) {
            super(collection);
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            for (int i4 = this.f92130b - 1; i4 >= 0; i4--) {
                if (!this.f92129a.get(i4).a(gVar, gVar2)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return org.jsoup.internal.f.k(this.f92129a, "");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(c... cVarArr) {
            this(Arrays.asList(cVarArr));
        }
    }

    b() {
        this.f92130b = 0;
        this.f92129a = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(c cVar) {
        this.f92129a.set(this.f92130b - 1, cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @r7.h
    public c c() {
        int i4 = this.f92130b;
        if (i4 > 0) {
            return this.f92129a.get(i4 - 1);
        }
        return null;
    }

    void d() {
        this.f92130b = this.f92129a.size();
    }

    b(Collection<c> collection) {
        this();
        this.f92129a.addAll(collection);
        d();
    }

    /* compiled from: CombiningEvaluator.java */
    /* renamed from: org.jsoup.select.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0804b extends b {
        C0804b(Collection<c> collection) {
            if (this.f92130b > 1) {
                this.f92129a.add(new a(collection));
            } else {
                this.f92129a.addAll(collection);
            }
            d();
        }

        @Override // org.jsoup.select.c
        public boolean a(org.jsoup.nodes.g gVar, org.jsoup.nodes.g gVar2) {
            for (int i4 = 0; i4 < this.f92130b; i4++) {
                if (this.f92129a.get(i4).a(gVar, gVar2)) {
                    return true;
                }
            }
            return false;
        }

        public void e(c cVar) {
            this.f92129a.add(cVar);
            d();
        }

        public String toString() {
            return org.jsoup.internal.f.k(this.f92129a, ", ");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0804b(c... cVarArr) {
            this(Arrays.asList(cVarArr));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0804b() {
        }
    }
}
