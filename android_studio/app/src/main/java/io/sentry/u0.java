package io.sentry;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.util.Map;

/* compiled from: ISerializer.java */
/* loaded from: classes4.dex */
public interface u0 {
    <T> void a(@m8.g T t9, @m8.g Writer writer) throws IOException;

    void b(@m8.g l3 l3Var, @m8.g OutputStream outputStream) throws Exception;

    @m8.h
    <T> T c(@m8.g Reader reader, @m8.g Class<T> cls);

    @m8.h
    l3 d(@m8.g InputStream inputStream);

    @m8.g
    String e(@m8.g Map<String, Object> map) throws Exception;
}
