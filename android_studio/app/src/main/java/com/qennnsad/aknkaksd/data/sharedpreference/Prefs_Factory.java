package com.qennnsad.aknkaksd.data.sharedpreference;

import android.content.Context;
import dagger.internal.e;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;
import u7.c;

@r({"dagger.hilt.android.qualifiers.ApplicationContext"})
@e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class Prefs_Factory implements h<Prefs> {
    private final c<Context> appContextProvider;

    public Prefs_Factory(c<Context> cVar) {
        this.appContextProvider = cVar;
    }

    public static Prefs_Factory create(c<Context> cVar) {
        return new Prefs_Factory(cVar);
    }

    public static Prefs newInstance(Context context) {
        return new Prefs(context);
    }

    @Override // u7.c
    public Prefs get() {
        return newInstance(this.appContextProvider.get());
    }
}
