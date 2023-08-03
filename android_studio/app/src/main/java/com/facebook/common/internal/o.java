package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Throwables.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class o {
    private o() {
    }

    public static List<Throwable> a(Throwable throwable) {
        j.i(throwable);
        ArrayList arrayList = new ArrayList(4);
        while (throwable != null) {
            arrayList.add(throwable);
            throwable = throwable.getCause();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static Throwable b(Throwable throwable) {
        while (true) {
            Throwable cause = throwable.getCause();
            if (cause == null) {
                return throwable;
            }
            throwable = cause;
        }
    }

    public static String c(Throwable throwable) {
        StringWriter stringWriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static RuntimeException d(Throwable throwable) {
        f((Throwable) j.i(throwable));
        throw new RuntimeException(throwable);
    }

    public static <X extends Throwable> void e(@r7.h Throwable throwable, Class<X> declaredType) throws Throwable {
        if (throwable != null && declaredType.isInstance(throwable)) {
            throw declaredType.cast(throwable);
        }
    }

    public static void f(@r7.h Throwable throwable) {
        e(throwable, Error.class);
        e(throwable, RuntimeException.class);
    }

    public static <X extends Throwable> void g(@r7.h Throwable throwable, Class<X> declaredType) throws Throwable {
        e(throwable, declaredType);
        f(throwable);
    }

    public static <X1 extends Throwable, X2 extends Throwable> void h(@r7.h Throwable throwable, Class<X1> declaredType1, Class<X2> declaredType2) throws Throwable, Throwable {
        j.i(declaredType2);
        e(throwable, declaredType1);
        g(throwable, declaredType2);
    }
}
