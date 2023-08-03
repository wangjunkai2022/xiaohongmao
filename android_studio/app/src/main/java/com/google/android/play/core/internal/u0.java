package com.google.android.play.core.internal;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.Collection;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class u0 extends v0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(Object obj, Field field, Class cls) {
        super(obj, field, Array.newInstance(cls, 0).getClass());
    }

    private final Class f() {
        return b().getType().getComponentType();
    }

    public final void d(Collection collection) {
        Object[] objArr = (Object[]) a();
        int length = objArr == null ? 0 : objArr.length;
        Object[] objArr2 = (Object[]) Array.newInstance(f(), collection.size() + length);
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        }
        for (Object obj : collection) {
            objArr2[length] = obj;
            length++;
        }
        c(objArr2);
    }

    public final void e(Collection collection) {
        Object[] objArr = (Object[]) a();
        int i4 = 0;
        Object[] objArr2 = (Object[]) Array.newInstance(f(), (objArr == null ? 0 : objArr.length) + collection.size());
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, collection.size(), objArr.length);
        }
        for (Object obj : collection) {
            objArr2[i4] = obj;
            i4++;
        }
        c(objArr2);
    }
}
