package com.google.android.gms.common.data;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public interface b<T> extends Iterable<T>, com.google.android.gms.common.api.n, Closeable {
    void close();

    T get(int i4);

    int getCount();

    @Nullable
    @u2.a
    Bundle getMetadata();

    @Deprecated
    boolean isClosed();

    @Override // java.lang.Iterable
    @NonNull
    Iterator<T> iterator();

    void release();

    @NonNull
    Iterator<T> x();
}
