package io.sentry;

import java.util.List;
import m8.a;

/* compiled from: ISpan.java */
/* loaded from: classes4.dex */
public interface v0 {
    @m8.h
    Object A(@m8.g String str);

    @m8.g
    f5 E();

    @m8.h
    Throwable F();

    void G(@m8.h SpanStatus spanStatus, @m8.h j3 j3Var);

    @m8.g
    v0 H(@m8.g String str, @m8.h String str2);

    void J(@m8.g String str);

    void a(@m8.g String str, @m8.g String str2);

    boolean b();

    void c(@m8.h SpanStatus spanStatus);

    @m8.g
    v4 d();

    @a.c
    boolean e();

    @m8.h
    String getDescription();

    @m8.h
    SpanStatus getStatus();

    void h();

    @m8.h
    String i(@m8.g String str);

    void k(@m8.h String str);

    @m8.g
    v0 n(@m8.g String str);

    void o(@m8.g String str, @m8.g Number number);

    @m8.h
    @a.b
    m5 q();

    void r(@m8.g String str, @m8.g Object obj);

    void s(@m8.h Throwable th);

    void t(@m8.h SpanStatus spanStatus);

    @m8.g
    String u();

    @m8.h
    @a.b
    e v(@m8.h List<String> list);

    @a.c
    @m8.g
    v0 w(@m8.g String str, @m8.h String str2, @m8.h j3 j3Var, @m8.g Instrumenter instrumenter);

    void y(@m8.g String str, @m8.g Number number, @m8.g MeasurementUnit measurementUnit);
}
