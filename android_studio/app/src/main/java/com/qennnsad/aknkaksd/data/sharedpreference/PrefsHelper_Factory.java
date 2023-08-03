package com.qennnsad.aknkaksd.data.sharedpreference;

import com.google.gson.Gson;
import dagger.internal.e;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;
import u7.c;

@r
@e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class PrefsHelper_Factory implements h<PrefsHelper> {
    private final c<Gson> gsonProvider;
    private final c<Prefs> prefsProvider;

    public PrefsHelper_Factory(c<Prefs> cVar, c<Gson> cVar2) {
        this.prefsProvider = cVar;
        this.gsonProvider = cVar2;
    }

    public static PrefsHelper_Factory create(c<Prefs> cVar, c<Gson> cVar2) {
        return new PrefsHelper_Factory(cVar, cVar2);
    }

    public static PrefsHelper newInstance(Prefs prefs, Gson gson) {
        return new PrefsHelper(prefs, gson);
    }

    @Override // u7.c
    public PrefsHelper get() {
        return newInstance(this.prefsProvider.get(), this.gsonProvider.get());
    }
}
