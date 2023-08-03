package org.minidns.util;

import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public class MultipleIoException extends IOException {

    /* renamed from: b  reason: collision with root package name */
    private static final long f93030b = -5932211337552319515L;

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ boolean f93031c = false;

    /* renamed from: a  reason: collision with root package name */
    private final List<IOException> f93032a;

    private MultipleIoException(List<? extends IOException> list) {
        super(a(list));
        this.f93032a = Collections.unmodifiableList(list);
    }

    private static String a(Collection<? extends Exception> collection) {
        StringBuilder sb = new StringBuilder();
        Iterator<? extends Exception> it = collection.iterator();
        while (it.hasNext()) {
            sb.append(it.next().getMessage());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public static void throwIfRequired(List<? extends IOException> list) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (list.size() == 1) {
            throw list.get(0);
        }
        throw new MultipleIoException(list);
    }

    public static IOException toIOException(List<? extends IOException> list) {
        int size = list.size();
        if (size == 1) {
            return list.get(0);
        }
        if (size > 1) {
            return new MultipleIoException(list);
        }
        return null;
    }

    public List<IOException> getExceptions() {
        return this.f93032a;
    }
}
