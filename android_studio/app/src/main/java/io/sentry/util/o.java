package io.sentry.util;

import java.net.URI;
import java.util.List;
import m8.a;

/* compiled from: PropagationTargetsUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class o {
    public static boolean a(@m8.g List<String> list, @m8.g String str) {
        if (list.isEmpty()) {
            return false;
        }
        for (String str2 : list) {
            if (str.contains(str2)) {
                return true;
            }
            if (str.matches(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(@m8.g List<String> list, URI uri) {
        return a(list, uri.toString());
    }
}
