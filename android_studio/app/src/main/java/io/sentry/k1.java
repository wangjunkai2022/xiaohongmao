package io.sentry;

import java.io.IOException;
import java.io.Writer;

/* compiled from: JsonObjectWriter.java */
/* loaded from: classes4.dex */
public final class k1 extends io.sentry.vendor.gson.stream.c {

    /* renamed from: l  reason: collision with root package name */
    private final j1 f83367l;

    public k1(Writer writer, int i4) {
        super(writer);
        this.f83367l = new j1(i4);
    }

    @Override // io.sentry.vendor.gson.stream.c
    /* renamed from: p0 */
    public k1 A(String str) throws IOException {
        super.A(str);
        return this;
    }

    public k1 q0(@m8.g o0 o0Var, @m8.h Object obj) throws IOException {
        this.f83367l.a(this, o0Var, obj);
        return this;
    }
}
