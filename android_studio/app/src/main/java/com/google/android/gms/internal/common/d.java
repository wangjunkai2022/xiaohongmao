package com.google.android.gms.internal.common;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class d<E> extends b<E> {
    public d() {
        super(4);
    }

    public final d<E> c(E e4) {
        super.a(e4);
        return this;
    }

    public final d<E> d(Iterator<? extends E> it) {
        while (it.hasNext()) {
            super.a(it.next());
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(int i4) {
        super(4);
    }
}
