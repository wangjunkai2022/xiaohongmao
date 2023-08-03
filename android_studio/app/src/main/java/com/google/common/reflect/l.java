package com.google.common.reflect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: TypeToInstanceMap.java */
@h3.a
/* loaded from: classes2.dex */
public interface l<B> extends Map<TypeToken<? extends B>, B> {
    @NullableDecl
    <T extends B> T getInstance(Class<T> cls);

    @CanIgnoreReturnValue
    @NullableDecl
    <T extends B> T putInstance(Class<T> cls, @NullableDecl T t9);

    @NullableDecl
    <T extends B> T r(TypeToken<T> typeToken);

    @CanIgnoreReturnValue
    @NullableDecl
    <T extends B> T z(TypeToken<T> typeToken, @NullableDecl T t9);
}
