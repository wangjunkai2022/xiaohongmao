package com.google.common.util.concurrent;

import java.lang.Thread;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: UncaughtExceptionHandlers.java */
@h3.c
/* loaded from: classes2.dex */
public final class m1 {

    /* compiled from: UncaughtExceptionHandlers.java */
    @h3.d
    /* loaded from: classes2.dex */
    static final class a implements Thread.UncaughtExceptionHandler {

        /* renamed from: b  reason: collision with root package name */
        private static final Logger f35292b = Logger.getLogger(a.class.getName());

        /* renamed from: a  reason: collision with root package name */
        private final Runtime f35293a;

        a(Runtime runtime) {
            this.f35293a = runtime;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            try {
                f35292b.log(Level.SEVERE, String.format(Locale.ROOT, "Caught an exception in %s.  Shutting down.", thread), th);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    private m1() {
    }

    public static Thread.UncaughtExceptionHandler a() {
        return new a(Runtime.getRuntime());
    }
}
