package org.bouncycastle.util;

/* loaded from: classes5.dex */
public interface Selector<T> extends Cloneable {
    Object clone();

    boolean match(T t9);
}
