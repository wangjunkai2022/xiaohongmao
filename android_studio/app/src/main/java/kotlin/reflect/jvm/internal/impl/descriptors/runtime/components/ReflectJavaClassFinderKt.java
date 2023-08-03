package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaClassFinder.kt */
/* loaded from: classes4.dex */
public final class ReflectJavaClassFinderKt {
    @h
    public static final Class<?> tryLoadClass(@g ClassLoader classLoader, @g String fqName) {
        Intrinsics.checkNotNullParameter(classLoader, "<this>");
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        try {
            return Class.forName(fqName, false, classLoader);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
