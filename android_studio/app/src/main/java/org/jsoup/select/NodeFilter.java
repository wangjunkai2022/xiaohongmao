package org.jsoup.select;

import org.jsoup.nodes.k;

/* loaded from: classes5.dex */
public interface NodeFilter {

    /* loaded from: classes5.dex */
    public enum FilterResult {
        CONTINUE,
        SKIP_CHILDREN,
        SKIP_ENTIRELY,
        REMOVE,
        STOP
    }

    FilterResult a(k kVar, int i4);

    FilterResult b(k kVar, int i4);
}
