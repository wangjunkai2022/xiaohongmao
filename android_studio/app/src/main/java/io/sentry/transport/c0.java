package io.sentry.transport;

/* compiled from: TransportResult.java */
/* loaded from: classes4.dex */
public abstract class c0 {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TransportResult.java */
    /* loaded from: classes4.dex */
    public static final class b extends c0 {

        /* renamed from: a  reason: collision with root package name */
        private final int f84011a;

        b(int i4) {
            super();
            this.f84011a = i4;
        }

        @Override // io.sentry.transport.c0
        public int c() {
            return this.f84011a;
        }

        @Override // io.sentry.transport.c0
        public boolean d() {
            return false;
        }
    }

    /* compiled from: TransportResult.java */
    /* loaded from: classes4.dex */
    private static final class c extends c0 {

        /* renamed from: a  reason: collision with root package name */
        static final c f84012a = new c();

        private c() {
            super();
        }

        @Override // io.sentry.transport.c0
        public int c() {
            return -1;
        }

        @Override // io.sentry.transport.c0
        public boolean d() {
            return true;
        }
    }

    @m8.g
    public static c0 a() {
        return b(-1);
    }

    @m8.g
    public static c0 b(int i4) {
        return new b(i4);
    }

    @m8.g
    public static c0 e() {
        return c.f84012a;
    }

    public abstract int c();

    public abstract boolean d();

    private c0() {
    }
}
