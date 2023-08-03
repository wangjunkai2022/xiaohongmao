package com.google.common.net;

import com.google.common.base.Optional;
import com.google.common.base.a0;
import com.google.common.base.f0;
import com.google.common.base.u;
import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.Immutable;
import com.google.thirdparty.publicsuffix.PublicSuffixType;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: InternetDomainName.java */
@Immutable
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.common.base.d f34681e = com.google.common.base.d.d(".。．｡");

    /* renamed from: f  reason: collision with root package name */
    private static final f0 f34682f = f0.h('.');

    /* renamed from: g  reason: collision with root package name */
    private static final u f34683g = u.o('.');

    /* renamed from: h  reason: collision with root package name */
    private static final int f34684h = -1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f34685i = 127;

    /* renamed from: j  reason: collision with root package name */
    private static final int f34686j = 253;

    /* renamed from: k  reason: collision with root package name */
    private static final int f34687k = 63;

    /* renamed from: l  reason: collision with root package name */
    private static final com.google.common.base.d f34688l;

    /* renamed from: m  reason: collision with root package name */
    private static final com.google.common.base.d f34689m;

    /* renamed from: a  reason: collision with root package name */
    private final String f34690a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<String> f34691b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34692c;

    /* renamed from: d  reason: collision with root package name */
    private final int f34693d;

    static {
        com.google.common.base.d d4 = com.google.common.base.d.d("-_");
        f34688l = d4;
        f34689m = com.google.common.base.d.x().I(d4);
    }

    d(String str) {
        String g4 = com.google.common.base.c.g(f34681e.N(str, '.'));
        g4 = g4.endsWith(".") ? g4.substring(0, g4.length() - 1) : g4;
        a0.u(g4.length() <= f34686j, "Domain name too long: '%s':", g4);
        this.f34690a = g4;
        ImmutableList<String> copyOf = ImmutableList.copyOf(f34682f.n(g4));
        this.f34691b = copyOf;
        a0.u(copyOf.size() <= 127, "Domain has too many parts: '%s'", g4);
        a0.u(x(copyOf), "Not a valid domain name: '%s'", g4);
        this.f34692c = c(Optional.absent());
        this.f34693d = c(Optional.of(PublicSuffixType.REGISTRY));
    }

    private d a(int i4) {
        u uVar = f34683g;
        ImmutableList<String> immutableList = this.f34691b;
        return d(uVar.k(immutableList.subList(i4, immutableList.size())));
    }

    private int c(Optional<PublicSuffixType> optional) {
        int size = this.f34691b.size();
        for (int i4 = 0; i4 < size; i4++) {
            String k10 = f34683g.k(this.f34691b.subList(i4, size));
            if (o(optional, Optional.fromNullable(com.google.thirdparty.publicsuffix.a.f35970a.get(k10)))) {
                return i4;
            }
            if (com.google.thirdparty.publicsuffix.a.f35972c.containsKey(k10)) {
                return i4 + 1;
            }
            if (p(optional, k10)) {
                return i4;
            }
        }
        return -1;
    }

    public static d d(String str) {
        return new d((String) a0.E(str));
    }

    public static boolean n(String str) {
        try {
            d(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    private static boolean o(Optional<PublicSuffixType> optional, Optional<PublicSuffixType> optional2) {
        return optional.isPresent() ? optional.equals(optional2) : optional2.isPresent();
    }

    private static boolean p(Optional<PublicSuffixType> optional, String str) {
        List<String> o9 = f34682f.f(2).o(str);
        return o9.size() == 2 && o(optional, Optional.fromNullable(com.google.thirdparty.publicsuffix.a.f35971b.get(o9.get(1))));
    }

    private static boolean w(String str, boolean z9) {
        if (str.length() >= 1 && str.length() <= 63) {
            if (!f34689m.C(com.google.common.base.d.f().P(str))) {
                return false;
            }
            com.google.common.base.d dVar = f34688l;
            if (!dVar.B(str.charAt(0)) && !dVar.B(str.charAt(str.length() - 1))) {
                return (z9 && com.google.common.base.d.j().B(str.charAt(0))) ? false : true;
            }
        }
        return false;
    }

    private static boolean x(List<String> list) {
        int size = list.size() - 1;
        if (w(list.get(size), true)) {
            for (int i4 = 0; i4 < size; i4++) {
                if (!w(list.get(i4), false)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public d b(String str) {
        return d(((String) a0.E(str)) + "." + this.f34690a);
    }

    public boolean e() {
        return this.f34691b.size() > 1;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            return this.f34690a.equals(((d) obj).f34690a);
        }
        return false;
    }

    public boolean f() {
        return this.f34692c != -1;
    }

    public boolean g() {
        return this.f34693d != -1;
    }

    public boolean h() {
        return this.f34692c == 0;
    }

    public int hashCode() {
        return this.f34690a.hashCode();
    }

    public boolean i() {
        return this.f34693d == 0;
    }

    public boolean j() {
        return this.f34693d == 1;
    }

    public boolean k() {
        return this.f34692c == 1;
    }

    public boolean l() {
        return this.f34692c > 0;
    }

    public boolean m() {
        return this.f34693d > 0;
    }

    public d q() {
        a0.x0(e(), "Domain '%s' has no parent", this.f34690a);
        return a(1);
    }

    public ImmutableList<String> r() {
        return this.f34691b;
    }

    public d s() {
        if (f()) {
            return a(this.f34692c);
        }
        return null;
    }

    public d t() {
        if (g()) {
            return a(this.f34693d);
        }
        return null;
    }

    public String toString() {
        return this.f34690a;
    }

    public d u() {
        if (j()) {
            return this;
        }
        a0.x0(m(), "Not under a registry suffix: %s", this.f34690a);
        return a(this.f34693d - 1);
    }

    public d v() {
        if (k()) {
            return this;
        }
        a0.x0(l(), "Not under a public suffix: %s", this.f34690a);
        return a(this.f34692c - 1);
    }
}
