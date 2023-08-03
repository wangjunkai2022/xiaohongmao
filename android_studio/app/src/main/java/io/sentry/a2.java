package io.sentry;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.util.Map;

/* compiled from: NoOpSerializer.java */
/* loaded from: classes4.dex */
final class a2 implements u0 {

    /* renamed from: a  reason: collision with root package name */
    private static final a2 f81880a = new a2();

    private a2() {
    }

    public static a2 f() {
        return f81880a;
    }

    @Override // io.sentry.u0
    public <T> void a(@m8.g T t9, @m8.g Writer writer) throws IOException {
    }

    @Override // io.sentry.u0
    public void b(@m8.g l3 l3Var, @m8.g OutputStream outputStream) throws Exception {
    }

    @Override // io.sentry.u0
    @m8.h
    public <T> T c(@m8.g Reader reader, @m8.g Class<T> cls) {
        return null;
    }

    @Override // io.sentry.u0
    @m8.h
    public l3 d(@m8.g InputStream inputStream) {
        return null;
    }

    @Override // io.sentry.u0
    @m8.g
    public String e(@m8.g Map<String, Object> map) throws Exception {
        return "";
    }
}
