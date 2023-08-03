package com.koushikdutta.async.util;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public class TaggedList<T> extends ArrayList<T> {

    /* renamed from: a  reason: collision with root package name */
    private Object f45173a;

    public synchronized <V> V tag() {
        return (V) this.f45173a;
    }

    public synchronized <V> void tagNull(V v9) {
        if (this.f45173a == null) {
            this.f45173a = v9;
        }
    }

    public synchronized <V> void tag(V v9) {
        this.f45173a = v9;
    }
}
