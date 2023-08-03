package com.google.common.collect;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Platform.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class u3 {
    private u3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] a(Object[] objArr, int i4, int i10, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i4, i10, tArr.getClass());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] b(T[] tArr, int i4) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> c(int i4) {
        return a0.l(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Set<E> d(int i4) {
        return b0.k(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> e(int i4) {
        return c0.M(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Set<E> f(int i4) {
        return d0.J(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Set<E> g() {
        return b0.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> h() {
        return a0.h();
    }

    static int i(int i4) {
        return i4;
    }

    static int j(int i4) {
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d3 k(d3 d3Var) {
        return d3Var.l();
    }
}
