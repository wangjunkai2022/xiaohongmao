package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.e;

/* compiled from: JsonPointerBasedFilter.java */
/* loaded from: classes.dex */
public class c extends TokenFilter {

    /* renamed from: b  reason: collision with root package name */
    protected final e f13856b;

    public c(String str) {
        this(e.j(str));
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    protected boolean a() {
        return this.f13856b.s();
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    public TokenFilter d() {
        return this;
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    public TokenFilter e() {
        return this;
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    public TokenFilter h(int i4) {
        e q9 = this.f13856b.q(i4);
        if (q9 == null) {
            return null;
        }
        if (q9.s()) {
            return TokenFilter.f13839a;
        }
        return new c(q9);
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    public TokenFilter q(String str) {
        e r9 = this.f13856b.r(str);
        if (r9 == null) {
            return null;
        }
        if (r9.s()) {
            return TokenFilter.f13839a;
        }
        return new c(r9);
    }

    @Override // com.fasterxml.jackson.core.filter.TokenFilter
    public String toString() {
        return "[JsonPointerFilter at: " + this.f13856b + "]";
    }

    public c(e eVar) {
        this.f13856b = eVar;
    }
}
