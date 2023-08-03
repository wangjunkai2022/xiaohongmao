package com.google.common.base;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Defaults.java */
@h3.c
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Double f32244a = Double.valueOf(0.0d);

    /* renamed from: b  reason: collision with root package name */
    private static final Float f32245b = Float.valueOf(0.0f);

    private i() {
    }

    @NullableDecl
    public static <T> T a(Class<T> cls) {
        a0.E(cls);
        if (cls == Boolean.TYPE) {
            return (T) Boolean.FALSE;
        }
        if (cls == Character.TYPE) {
            return (T) (char) 0;
        }
        if (cls == Byte.TYPE) {
            return (T) (byte) 0;
        }
        if (cls == Short.TYPE) {
            return (T) (short) 0;
        }
        if (cls == Integer.TYPE) {
            return (T) 0;
        }
        if (cls == Long.TYPE) {
            return (T) 0L;
        }
        if (cls == Float.TYPE) {
            return (T) f32245b;
        }
        if (cls == Double.TYPE) {
            return (T) f32244a;
        }
        return null;
    }
}
