package dagger.hilt;

import java.lang.annotation.Annotation;
import r7.g;

/* compiled from: EntryPoints.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62056a = "dagger.hilt.android.EarlyEntryPoint";

    private c() {
    }

    @g
    public static <T> T a(Object component, Class<T> entryPoint) {
        if (component instanceof q6.b) {
            if (component instanceof q6.g) {
                q6.f.d(!b(entryPoint, f62056a), "Interface, %s, annotated with @EarlyEntryPoint should be called with EarlyEntryPoints.get() rather than EntryPoints.get()", entryPoint.getCanonicalName());
            }
            return entryPoint.cast(component);
        } else if (component instanceof q6.c) {
            return (T) a(((q6.c) component).generatedComponent(), entryPoint);
        } else {
            throw new IllegalStateException(String.format("Given component holder %s does not implement %s or %s", component.getClass(), q6.b.class, q6.c.class));
        }
    }

    private static boolean b(Class<?> clazz, String annotationName) {
        for (Annotation annotation : clazz.getAnnotations()) {
            if (annotation.annotationType().getCanonicalName().contentEquals(annotationName)) {
                return true;
            }
        }
        return false;
    }
}
