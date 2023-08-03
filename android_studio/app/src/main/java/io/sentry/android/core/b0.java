package io.sentry.android.core;

import android.content.Context;
import io.sentry.android.core.internal.util.ConnectivityChecker;

/* compiled from: AndroidTransportGate.java */
/* loaded from: classes4.dex */
final class b0 implements io.sentry.transport.r {

    /* renamed from: a  reason: collision with root package name */
    private final Context f82173a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.o0 f82174b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidTransportGate.java */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f82175a;

        static {
            int[] iArr = new int[ConnectivityChecker.Status.values().length];
            f82175a = iArr;
            try {
                iArr[ConnectivityChecker.Status.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f82175a[ConnectivityChecker.Status.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f82175a[ConnectivityChecker.Status.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(@m8.g Context context, @m8.g io.sentry.o0 o0Var) {
        this.f82173a = context;
        this.f82174b = o0Var;
    }

    @Override // io.sentry.transport.r
    public boolean a() {
        return b(ConnectivityChecker.b(this.f82173a, this.f82174b));
    }

    @m8.k
    boolean b(@m8.g ConnectivityChecker.Status status) {
        int i4 = a.f82175a[status.ordinal()];
        return i4 == 1 || i4 == 2 || i4 == 3;
    }
}
