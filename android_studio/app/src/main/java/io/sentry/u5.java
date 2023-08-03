package io.sentry;

import java.lang.Thread;

/* compiled from: UncaughtExceptionHandler.java */
/* loaded from: classes4.dex */
interface u5 {

    /* compiled from: UncaughtExceptionHandler.java */
    /* loaded from: classes4.dex */
    public static final class a implements u5 {

        /* renamed from: a  reason: collision with root package name */
        private static final a f84062a = new a();

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static u5 c() {
            return f84062a;
        }

        @Override // io.sentry.u5
        public void a(@m8.h Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
        }

        @Override // io.sentry.u5
        public Thread.UncaughtExceptionHandler b() {
            return Thread.getDefaultUncaughtExceptionHandler();
        }
    }

    void a(@m8.h Thread.UncaughtExceptionHandler uncaughtExceptionHandler);

    Thread.UncaughtExceptionHandler b();
}
