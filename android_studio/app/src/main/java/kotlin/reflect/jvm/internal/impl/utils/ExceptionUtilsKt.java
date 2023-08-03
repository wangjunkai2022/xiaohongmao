package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: exceptionUtils.kt */
/* loaded from: classes4.dex */
public final class ExceptionUtilsKt {
    public static final boolean isProcessCanceledException(@g Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        Class<?> cls = th.getClass();
        while (!Intrinsics.areEqual(cls.getCanonicalName(), "com.intellij.openapi.progress.ProcessCanceledException")) {
            cls = cls.getSuperclass();
            if (cls == null) {
                return false;
            }
        }
        return true;
    }

    @g
    public static final RuntimeException rethrow(@g Throwable e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        throw e4;
    }
}
