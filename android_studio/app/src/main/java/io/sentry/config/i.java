package io.sentry.config;

import io.sentry.l5;
import java.util.ArrayList;
import java.util.Properties;
import m8.a;

/* compiled from: PropertiesProviderFactory.java */
@a.c
/* loaded from: classes4.dex */
public final class i {
    @m8.g
    public static h a() {
        Properties a10;
        Properties a11;
        l5 l5Var = new l5();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new k());
        arrayList.add(new d());
        String property = System.getProperty("sentry.properties.file");
        if (property != null && (a11 = new e(property, l5Var).a()) != null) {
            arrayList.add(new j(a11));
        }
        String str = System.getenv("SENTRY_PROPERTIES_FILE");
        if (str != null && (a10 = new e(str, l5Var).a()) != null) {
            arrayList.add(new j(a10));
        }
        Properties a12 = new b(l5Var).a();
        if (a12 != null) {
            arrayList.add(new j(a12));
        }
        Properties a13 = new e("sentry.properties", l5Var).a();
        if (a13 != null) {
            arrayList.add(new j(a13));
        }
        return new c(arrayList);
    }
}
