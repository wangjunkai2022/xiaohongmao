package com.facebook.datasource;

import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: DataSource.java */
/* loaded from: classes.dex */
public interface d<T> {
    @r7.h
    T a();

    boolean b();

    boolean close();

    boolean d();

    @r7.h
    Throwable e();

    void f(f<T> dataSubscriber, Executor executor);

    boolean g();

    @r7.h
    Map<String, Object> getExtras();

    float getProgress();

    boolean h();

    boolean isClosed();
}
