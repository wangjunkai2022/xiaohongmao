package com.google.common.base;

import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Objects.java */
@h3.b
/* loaded from: classes2.dex */
public final class w extends k {
    private w() {
    }

    public static boolean a(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int b(@NullableDecl Object... objArr) {
        return Arrays.hashCode(objArr);
    }
}
