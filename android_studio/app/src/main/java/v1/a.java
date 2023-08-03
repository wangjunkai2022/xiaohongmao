package v1;

import java.util.List;
import java.util.Map;

/* compiled from: Assertions.java */
/* loaded from: classes.dex */
public class a {
    public static void a(boolean z9) {
        if (!z9) {
            throw new AssertionError();
        }
    }

    public static void b(boolean z9, String str) {
        if (!z9) {
            throw new AssertionError(str);
        }
    }

    public static <T> T c(int i4, List<T> list) {
        b(i4 >= 0 && i4 < list.size(), "Index not in bound");
        return (T) f(list.get(i4), "Null value");
    }

    public static <K, V> V d(K k10, Map<K, V> map) {
        b(map.containsKey(k10), "Key not found");
        return (V) f(map.get(k10), "Null value");
    }

    public static <T> T e(@r7.h T t9) {
        if (t9 != null) {
            return t9;
        }
        throw new AssertionError();
    }

    public static <T> T f(@r7.h T t9, String str) {
        if (t9 != null) {
            return t9;
        }
        throw new AssertionError(str);
    }

    public static AssertionError g() {
        throw new AssertionError();
    }

    public static AssertionError h(Exception exc) {
        throw new AssertionError(exc);
    }

    public static AssertionError i(String str) {
        throw new AssertionError(str);
    }

    public static void j(boolean z9) {
    }

    public static void k(boolean z9, String str) {
    }

    public static <T> T l(@r7.h T t9) {
        return t9;
    }

    public static <T> T m(@r7.h T t9, String str) {
        return t9;
    }

    public static <T> T n(@r7.h T t9, String str) {
        return t9;
    }
}
