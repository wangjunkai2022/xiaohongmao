package org.bouncycastle.util;

/* loaded from: classes5.dex */
public interface StringList extends Iterable<String> {
    boolean add(String str);

    String get(int i4);

    int size();

    String[] toStringArray();

    String[] toStringArray(int i4, int i10);
}
