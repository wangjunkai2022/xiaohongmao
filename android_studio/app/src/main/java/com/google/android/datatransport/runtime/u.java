package com.google.android.datatransport.runtime;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;
import k2.d;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransportRuntimeComponent.java */
@k2.d(modules = {com.google.android.datatransport.runtime.backends.f.class, com.google.android.datatransport.runtime.scheduling.persistence.e.class, j.class, com.google.android.datatransport.runtime.scheduling.h.class, com.google.android.datatransport.runtime.scheduling.f.class, com.google.android.datatransport.runtime.time.d.class})
@u7.f
/* loaded from: classes2.dex */
public abstract class u implements Closeable {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TransportRuntimeComponent.java */
    @d.a
    /* loaded from: classes2.dex */
    public interface a {
        @k2.b
        a a(Context context);

        u build();
    }

    abstract com.google.android.datatransport.runtime.scheduling.persistence.c a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract t b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a().close();
    }
}
