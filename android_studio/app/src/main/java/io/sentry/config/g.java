package io.sentry.config;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: PropertiesProvider.java */
/* loaded from: classes4.dex */
public final /* synthetic */ class g {
    @m8.h
    public static Boolean a(h hVar, @m8.g String str) {
        String property = hVar.getProperty(str);
        if (property != null) {
            return Boolean.valueOf(property);
        }
        return null;
    }

    @m8.h
    public static Double b(h hVar, @m8.g String str) {
        String property = hVar.getProperty(str);
        if (property != null) {
            try {
                return Double.valueOf(property);
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    @m8.g
    public static List c(h hVar, @m8.g String str) {
        String property = hVar.getProperty(str);
        return property != null ? Arrays.asList(property.split(",")) : Collections.emptyList();
    }

    @m8.h
    public static Long d(h hVar, @m8.g String str) {
        String property = hVar.getProperty(str);
        if (property != null) {
            try {
                return Long.valueOf(property);
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    @m8.g
    public static String e(h hVar, @m8.g String str, @m8.g String str2) {
        String property = hVar.getProperty(str);
        return property != null ? property : str2;
    }
}
