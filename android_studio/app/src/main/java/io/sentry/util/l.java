package io.sentry.util;

import java.util.Arrays;
import m8.a;

/* compiled from: Objects.java */
@a.c
/* loaded from: classes4.dex */
public final class l {
    private l() {
    }

    public static boolean a(@m8.h Object obj, @m8.h Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int b(@m8.h Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static <T> T c(@m8.h T t9, @m8.g String str) {
        if (t9 != null) {
            return t9;
        }
        throw new IllegalArgumentException(str);
    }
}
