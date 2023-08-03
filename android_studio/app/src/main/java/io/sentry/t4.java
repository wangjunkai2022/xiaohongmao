package io.sentry;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import m8.a;

/* compiled from: SentryStackTraceFactory.java */
@a.c
/* loaded from: classes4.dex */
public final class t4 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f83976a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f83977b;

    public t4(@m8.h List<String> list, @m8.h List<String> list2) {
        this.f83976a = list;
        this.f83977b = list2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean g(io.sentry.protocol.r rVar) {
        return Boolean.TRUE.equals(rVar.G());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean h(io.sentry.protocol.r rVar) {
        String y9 = rVar.y();
        boolean z9 = false;
        if (y9 != null && (y9.startsWith("sun.") || y9.startsWith("java.") || y9.startsWith("android.") || y9.startsWith("com.android."))) {
            z9 = true;
        }
        return !z9;
    }

    @a.c
    @m8.g
    public List<io.sentry.protocol.r> c() {
        return d(new Exception());
    }

    @m8.g
    List<io.sentry.protocol.r> d(@m8.g Throwable th) {
        List<io.sentry.protocol.r> e4 = e(th.getStackTrace());
        if (e4 == null) {
            return Collections.emptyList();
        }
        List<io.sentry.protocol.r> a10 = io.sentry.util.a.a(e4, r4.f83956a);
        return !a10.isEmpty() ? a10 : io.sentry.util.a.a(e4, s4.f83968a);
    }

    @m8.h
    public List<io.sentry.protocol.r> e(@m8.h StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null || stackTraceElementArr.length <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            if (stackTraceElement != null) {
                String className = stackTraceElement.getClassName();
                if (!className.startsWith("io.sentry.") || className.startsWith("io.sentry.samples.") || className.startsWith("io.sentry.mobile.")) {
                    io.sentry.protocol.r rVar = new io.sentry.protocol.r();
                    rVar.P(Boolean.valueOf(f(className)));
                    rVar.S(className);
                    rVar.N(stackTraceElement.getMethodName());
                    rVar.L(stackTraceElement.getFileName());
                    if (stackTraceElement.getLineNumber() >= 0) {
                        rVar.R(Integer.valueOf(stackTraceElement.getLineNumber()));
                    }
                    rVar.T(Boolean.valueOf(stackTraceElement.isNativeMethod()));
                    arrayList.add(rVar);
                }
            }
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    @m8.k
    boolean f(@m8.h String str) {
        if (str == null || str.isEmpty()) {
            return true;
        }
        List<String> list = this.f83977b;
        if (list != null) {
            for (String str2 : list) {
                if (str.startsWith(str2)) {
                    return true;
                }
            }
        }
        List<String> list2 = this.f83976a;
        if (list2 != null) {
            Iterator<String> it = list2.iterator();
            while (it.hasNext() && !str.startsWith(it.next())) {
            }
        }
        return false;
    }
}
