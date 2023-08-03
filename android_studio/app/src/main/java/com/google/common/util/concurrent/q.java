package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.Exception;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: CheckedFuture.java */
@h3.b
@h3.a
@Deprecated
@CanIgnoreReturnValue
/* loaded from: classes2.dex */
public interface q<V, X extends Exception> extends q0<V> {
    V d() throws Exception;

    V m(long j4, TimeUnit timeUnit) throws TimeoutException, Exception;
}
