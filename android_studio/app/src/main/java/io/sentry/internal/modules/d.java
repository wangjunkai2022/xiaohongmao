package io.sentry.internal.modules;

import io.sentry.SentryLevel;
import io.sentry.o0;
import java.io.InputStream;
import java.util.Map;
import java.util.TreeMap;
import m8.a;
import m8.g;
import m8.h;

/* compiled from: ResourcesModulesLoader.java */
@a.c
/* loaded from: classes4.dex */
public final class d extends b {
    @g

    /* renamed from: e  reason: collision with root package name */
    private final ClassLoader f83354e;

    public d(@g o0 o0Var) {
        this(o0Var, d.class.getClassLoader());
    }

    @Override // io.sentry.internal.modules.b
    protected Map<String, String> b() {
        TreeMap treeMap = new TreeMap();
        try {
            InputStream resourceAsStream = this.f83354e.getResourceAsStream(b.f83350d);
            if (resourceAsStream == null) {
                this.f83351a.c(SentryLevel.INFO, "%s file was not found.", b.f83350d);
                return treeMap;
            }
            return c(resourceAsStream);
        } catch (SecurityException e4) {
            this.f83351a.b(SentryLevel.INFO, "Access to resources denied.", e4);
            return treeMap;
        }
    }

    d(@g o0 o0Var, @h ClassLoader classLoader) {
        super(o0Var);
        if (classLoader == null) {
            this.f83354e = ClassLoader.getSystemClassLoader();
        } else {
            this.f83354e = classLoader;
        }
    }
}
