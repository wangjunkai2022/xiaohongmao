package com.facebook.common.util;

import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: HashCodeUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int f11044a = 31;

    public static int a(int i12) {
        return i12 + 31;
    }

    public static int b(int i12, int i22) {
        return ((i12 + 31) * 31) + i22;
    }

    public static int c(int i12, int i22, int i32) {
        return ((((i12 + 31) * 31) + i22) * 31) + i32;
    }

    public static int d(int i12, int i22, int i32, int i4) {
        return ((((((i12 + 31) * 31) + i22) * 31) + i32) * 31) + i4;
    }

    public static int e(int i12, int i22, int i32, int i4, int i52) {
        return ((((((((i12 + 31) * 31) + i22) * 31) + i32) * 31) + i4) * 31) + i52;
    }

    public static int f(int i12, int i22, int i32, int i4, int i52, int i62) {
        return ((((((((((i12 + 31) * 31) + i22) * 31) + i32) * 31) + i4) * 31) + i52) * 31) + i62;
    }

    public static int g(@h Object o12) {
        return a(o12 == null ? 0 : o12.hashCode());
    }

    public static int h(@h Object o12, @h Object o22) {
        return b(o12 == null ? 0 : o12.hashCode(), o22 != null ? o22.hashCode() : 0);
    }

    public static int i(@h Object o12, @h Object o22, @h Object o32) {
        return c(o12 == null ? 0 : o12.hashCode(), o22 == null ? 0 : o22.hashCode(), o32 != null ? o32.hashCode() : 0);
    }

    public static int j(@h Object o12, @h Object o22, @h Object o32, @h Object o42) {
        return d(o12 == null ? 0 : o12.hashCode(), o22 == null ? 0 : o22.hashCode(), o32 == null ? 0 : o32.hashCode(), o42 != null ? o42.hashCode() : 0);
    }

    public static int k(@h Object o12, @h Object o22, @h Object o32, @h Object o42, @h Object o52) {
        return e(o12 == null ? 0 : o12.hashCode(), o22 == null ? 0 : o22.hashCode(), o32 == null ? 0 : o32.hashCode(), o42 == null ? 0 : o42.hashCode(), o52 != null ? o52.hashCode() : 0);
    }

    public static int l(@h Object o12, @h Object o22, @h Object o32, @h Object o42, @h Object o52, @h Object o62) {
        return f(o12 == null ? 0 : o12.hashCode(), o22 == null ? 0 : o22.hashCode(), o32 == null ? 0 : o32.hashCode(), o42 == null ? 0 : o42.hashCode(), o52 == null ? 0 : o52.hashCode(), o62 == null ? 0 : o62.hashCode());
    }
}
