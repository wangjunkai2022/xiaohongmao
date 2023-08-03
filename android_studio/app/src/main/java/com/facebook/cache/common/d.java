package com.facebook.cache.common;

import com.facebook.infer.annotation.Nullsafe;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CacheKeyUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class d {
    public static String a(final c key) {
        try {
            if (key instanceof g) {
                return c(((g) key).d().get(0));
            }
            return c(key);
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static List<String> b(final c key) {
        ArrayList arrayList;
        try {
            if (key instanceof g) {
                List<c> d4 = ((g) key).d();
                arrayList = new ArrayList(d4.size());
                for (int i4 = 0; i4 < d4.size(); i4++) {
                    arrayList.add(c(d4.get(i4)));
                }
            } else {
                arrayList = new ArrayList(1);
                arrayList.add(key.c() ? key.a() : c(key));
            }
            return arrayList;
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    private static String c(final c key) throws UnsupportedEncodingException {
        return com.facebook.common.util.d.i(key.a().getBytes("UTF-8"));
    }
}
