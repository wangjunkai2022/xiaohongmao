package com.google.android.play.core.tasks;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class d<ResultT> {
    @NonNull
    public abstract d<ResultT> a(@NonNull a<ResultT> aVar);

    @NonNull
    public abstract d<ResultT> b(@NonNull Executor executor, @NonNull a<ResultT> aVar);

    @NonNull
    public abstract d<ResultT> c(@NonNull b bVar);

    @NonNull
    public abstract d<ResultT> d(@NonNull Executor executor, @NonNull b bVar);

    @NonNull
    public abstract d<ResultT> e(c<? super ResultT> cVar);

    @NonNull
    public abstract d<ResultT> f(@NonNull Executor executor, @NonNull c<? super ResultT> cVar);

    @Nullable
    public abstract Exception g();

    @NonNull
    public abstract ResultT h();

    public abstract <X extends Throwable> ResultT i(Class<X> cls) throws Throwable;

    public abstract boolean j();

    public abstract boolean k();
}
