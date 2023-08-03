package com.facebook.datasource;

import java.util.Map;

/* compiled from: SimpleDataSource.java */
/* loaded from: classes.dex */
public class j<T> extends a<T> {
    private j() {
    }

    public static <T> j<T> y() {
        return new j<>();
    }

    @Override // com.facebook.datasource.a
    public boolean p(Throwable throwable) {
        return super.p((Throwable) com.facebook.common.internal.j.i(throwable));
    }

    @Override // com.facebook.datasource.a
    public boolean s(float progress) {
        return super.s(progress);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.datasource.a
    public boolean v(T value, boolean isLast, Map<String, Object> extras) {
        return super.v(com.facebook.common.internal.j.i(value), isLast, extras);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean z(T value) {
        return super.v(com.facebook.common.internal.j.i(value), true, null);
    }
}
