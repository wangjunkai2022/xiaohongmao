package io.sentry;

import java.lang.reflect.InvocationTargetException;
import m8.a;

/* compiled from: OptionsContainer.java */
@a.c
/* loaded from: classes4.dex */
public final class g2<T> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Class<T> f83228a;

    private g2(@m8.g Class<T> cls) {
        this.f83228a = cls;
    }

    @m8.g
    public static <T> g2<T> a(@m8.g Class<T> cls) {
        return new g2<>(cls);
    }

    @m8.g
    public T b() throws InstantiationException, IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return this.f83228a.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
    }
}
