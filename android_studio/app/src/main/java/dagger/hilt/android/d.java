package dagger.hilt.android;

import android.app.Application;
import android.content.Context;
import java.lang.annotation.Annotation;

/* compiled from: EarlyEntryPoints.java */
/* loaded from: classes3.dex */
public final class d {
    private d() {
    }

    @r7.g
    public static <T> T a(Context applicationContext, Class<T> entryPoint) {
        Application a10 = g6.a.a(applicationContext);
        q6.f.d(a10 instanceof q6.d, "Expected application context to implement GeneratedComponentManagerHolder. Check that you're passing in an application context that uses Hilt.", new Object[0]);
        q6.c<?> componentManager = ((q6.d) a10).componentManager();
        if (componentManager instanceof q6.h) {
            q6.f.d(b(entryPoint, c.class), "%s should be called with EntryPoints.get() rather than EarlyEntryPoints.get()", entryPoint.getCanonicalName());
            return entryPoint.cast(((q6.h) componentManager).z());
        }
        return (T) dagger.hilt.c.a(a10, entryPoint);
    }

    private static boolean b(Class<?> clazz, Class<? extends Annotation> annotationClazz) {
        for (Annotation annotation : clazz.getAnnotations()) {
            if (annotation.annotationType().equals(annotationClazz)) {
                return true;
            }
        }
        return false;
    }
}
