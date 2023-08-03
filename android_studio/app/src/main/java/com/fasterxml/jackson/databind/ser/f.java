package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;

/* compiled from: FilterProvider.java */
/* loaded from: classes.dex */
public abstract class f {
    @Deprecated
    public abstract b findFilter(Object obj);

    public h findPropertyFilter(Object obj, Object obj2) {
        b findFilter = findFilter(obj);
        if (findFilter == null) {
            return null;
        }
        return SimpleBeanPropertyFilter.from(findFilter);
    }
}
