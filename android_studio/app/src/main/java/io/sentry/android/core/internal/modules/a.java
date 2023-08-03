package io.sentry.android.core.internal.modules;

import android.content.Context;
import io.sentry.SentryLevel;
import io.sentry.internal.modules.b;
import io.sentry.o0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import m8.a;
import m8.g;

/* compiled from: AssetsModulesLoader.java */
@a.c
/* loaded from: classes4.dex */
public final class a extends b {
    @g

    /* renamed from: e  reason: collision with root package name */
    private final Context f82460e;

    public a(@g Context context, @g o0 o0Var) {
        super(o0Var);
        this.f82460e = context;
    }

    @Override // io.sentry.internal.modules.b
    protected Map<String, String> b() {
        TreeMap treeMap = new TreeMap();
        try {
            return c(this.f82460e.getAssets().open(b.f83350d));
        } catch (FileNotFoundException unused) {
            this.f83351a.c(SentryLevel.INFO, "%s file was not found.", b.f83350d);
            return treeMap;
        } catch (IOException e4) {
            this.f83351a.b(SentryLevel.ERROR, "Error extracting modules.", e4);
            return treeMap;
        }
    }
}
