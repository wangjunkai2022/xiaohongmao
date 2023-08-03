package io.sentry;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SentryValues.java */
/* loaded from: classes4.dex */
public final class b5<T> {

    /* renamed from: a  reason: collision with root package name */
    private final List<T> f83040a;

    /* compiled from: SentryValues.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83041a = "values";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b5(@m8.h List<T> list) {
        this.f83040a = new ArrayList(list == null ? new ArrayList<>(0) : list);
    }

    @m8.g
    public List<T> a() {
        return this.f83040a;
    }
}
