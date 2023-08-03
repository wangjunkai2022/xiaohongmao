package com.google.android.gms.dynamic;

import android.os.IBinder;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.dynamic.d;
import java.lang.reflect.Field;
import y2.y;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@y
/* loaded from: classes2.dex */
public final class f<T> extends d.a {

    /* renamed from: c  reason: collision with root package name */
    private final T f29311c;

    private f(T t9) {
        this.f29311c = t9;
    }

    @NonNull
    @u2.a
    public static <T> d n1(@NonNull T t9) {
        return new f(t9);
    }

    @NonNull
    @u2.a
    public static <T> T z(@NonNull d dVar) {
        if (dVar instanceof f) {
            return ((f) dVar).f29311c;
        }
        IBinder asBinder = dVar.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i4 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i4++;
                field = field2;
            }
        }
        if (i4 == 1) {
            u.k(field);
            if (!field.isAccessible()) {
                field.setAccessible(true);
                try {
                    return (T) field.get(asBinder);
                } catch (IllegalAccessException e4) {
                    throw new IllegalArgumentException("Could not access the field in remoteBinder.", e4);
                } catch (NullPointerException e10) {
                    throw new IllegalArgumentException("Binder object is null.", e10);
                }
            }
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        int length = declaredFields.length;
        StringBuilder sb = new StringBuilder(64);
        sb.append("Unexpected number of IObjectWrapper declared fields: ");
        sb.append(length);
        throw new IllegalArgumentException(sb.toString());
    }
}
