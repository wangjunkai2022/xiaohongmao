package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ObjectArrays.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class p3 {
    private p3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static Object a(Object obj, int i4) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("at index " + i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static Object[] b(Object... objArr) {
        return c(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static Object[] c(Object[] objArr, int i4) {
        for (int i10 = 0; i10 < i4; i10++) {
            a(objArr[i10], i10);
        }
        return objArr;
    }

    public static <T> T[] d(@NullableDecl T t9, T[] tArr) {
        T[] tArr2 = (T[]) j(tArr, tArr.length + 1);
        tArr2[0] = t9;
        System.arraycopy(tArr, 0, tArr2, 1, tArr.length);
        return tArr2;
    }

    public static <T> T[] e(T[] tArr, @NullableDecl T t9) {
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length + 1);
        tArr2[tArr.length] = t9;
        return tArr2;
    }

    @h3.c
    public static <T> T[] f(T[] tArr, T[] tArr2, Class<T> cls) {
        T[] tArr3 = (T[]) i(cls, tArr.length + tArr2.length);
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    static Object[] g(Object[] objArr, int i4, int i10) {
        com.google.common.base.a0.f0(i4, i4 + i10, objArr.length);
        if (i10 == 0) {
            return new Object[0];
        }
        Object[] objArr2 = new Object[i10];
        System.arraycopy(objArr, i4, objArr2, 0, i10);
        return objArr2;
    }

    @CanIgnoreReturnValue
    private static Object[] h(Iterable<?> iterable, Object[] objArr) {
        Iterator<?> it = iterable.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            objArr[i4] = it.next();
            i4++;
        }
        return objArr;
    }

    @h3.c
    public static <T> T[] i(Class<T> cls, int i4) {
        return (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i4));
    }

    public static <T> T[] j(T[] tArr, int i4) {
        return (T[]) u3.b(tArr, i4);
    }

    static void k(Object[] objArr, int i4, int i10) {
        Object obj = objArr[i4];
        objArr[i4] = objArr[i10];
        objArr[i10] = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] l(Collection<?> collection) {
        return h(collection, new Object[collection.size()]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] m(Collection<?> collection, T[] tArr) {
        int size = collection.size();
        if (tArr.length < size) {
            tArr = (T[]) j(tArr, size);
        }
        h(collection, tArr);
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] n(Object[] objArr, int i4, int i10, T[] tArr) {
        com.google.common.base.a0.f0(i4, i4 + i10, objArr.length);
        if (tArr.length < i10) {
            tArr = (T[]) j(tArr, i10);
        } else if (tArr.length > i10) {
            tArr[i10] = null;
        }
        System.arraycopy(objArr, i4, tArr, 0, i10);
        return tArr;
    }
}
