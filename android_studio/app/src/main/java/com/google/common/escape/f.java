package com.google.common.escape;

import com.google.common.base.q;

/* compiled from: Escaper.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private final q<String, String> f34026a = new a();

    /* compiled from: Escaper.java */
    /* loaded from: classes2.dex */
    class a implements q<String, String> {
        a() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public String apply(String str) {
            return f.this.b(str);
        }
    }

    public final q<String, String> a() {
        return this.f34026a;
    }

    public abstract String b(String str);
}
