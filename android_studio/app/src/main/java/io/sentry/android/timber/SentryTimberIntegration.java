package io.sentry.android.timber;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.h4;
import io.sentry.n0;
import io.sentry.o0;
import io.sentry.protocol.l;
import io.sentry.z0;
import java.io.Closeable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import timber.log.Timber;

/* compiled from: SentryTimberIntegration.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0011¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\u0007H\u0016R\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\b\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0019\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0013\u001a\u0004\b\u0018\u0010\u0015¨\u0006\u001c"}, d2 = {"Lio/sentry/android/timber/SentryTimberIntegration;", "Lio/sentry/z0;", "Ljava/io/Closeable;", "Lio/sentry/n0;", "hub", "Lio/sentry/SentryOptions;", "options", "", "a", "close", "Lio/sentry/android/timber/e;", "Lio/sentry/android/timber/e;", "tree", "Lio/sentry/o0;", "b", "Lio/sentry/o0;", h4.b.f83285c, "Lio/sentry/SentryLevel;", "c", "Lio/sentry/SentryLevel;", "p", "()Lio/sentry/SentryLevel;", "minEventLevel", "d", "k", "minBreadcrumbLevel", "<init>", "(Lio/sentry/SentryLevel;Lio/sentry/SentryLevel;)V", "sentry-android-timber_release"}, k = 1, mv = {1, 4, 3})
/* loaded from: classes4.dex */
public final class SentryTimberIntegration implements z0, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private e f83009a;

    /* renamed from: b  reason: collision with root package name */
    private o0 f83010b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final SentryLevel f83011c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final SentryLevel f83012d;

    public SentryTimberIntegration() {
        this(null, null, 3, null);
    }

    public SentryTimberIntegration(@g SentryLevel minEventLevel, @g SentryLevel minBreadcrumbLevel) {
        Intrinsics.checkNotNullParameter(minEventLevel, "minEventLevel");
        Intrinsics.checkNotNullParameter(minBreadcrumbLevel, "minBreadcrumbLevel");
        this.f83011c = minEventLevel;
        this.f83012d = minBreadcrumbLevel;
    }

    public static final /* synthetic */ o0 b(SentryTimberIntegration sentryTimberIntegration) {
        o0 o0Var = sentryTimberIntegration.f83010b;
        if (o0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException(h4.b.f83285c);
        }
        return o0Var;
    }

    public static final /* synthetic */ e d(SentryTimberIntegration sentryTimberIntegration) {
        e eVar = sentryTimberIntegration.f83009a;
        if (eVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tree");
        }
        return eVar;
    }

    @Override // io.sentry.z0
    public void a(@g n0 hub, @g SentryOptions options) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(options, "options");
        l sdkVersion = options.getSdkVersion();
        if (sdkVersion != null) {
            sdkVersion.d("maven:io.sentry:sentry-android-timber", "6.13.0");
        }
        o0 logger = options.getLogger();
        Intrinsics.checkNotNullExpressionValue(logger, "options.logger");
        this.f83010b = logger;
        e eVar = new e(hub, this.f83011c, this.f83012d);
        this.f83009a = eVar;
        Timber.r(eVar);
        o0 o0Var = this.f83010b;
        if (o0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException(h4.b.f83285c);
        }
        o0Var.c(SentryLevel.DEBUG, "SentryTimberIntegration installed.", new Object[0]);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        e eVar = this.f83009a;
        if (eVar != null) {
            if (eVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tree");
            }
            Timber.v(eVar);
            o0 o0Var = this.f83010b;
            if (o0Var != null) {
                if (o0Var == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(h4.b.f83285c);
                }
                o0Var.c(SentryLevel.DEBUG, "SentryTimberIntegration removed.", new Object[0]);
            }
        }
    }

    @g
    public final SentryLevel k() {
        return this.f83012d;
    }

    @g
    public final SentryLevel p() {
        return this.f83011c;
    }

    public /* synthetic */ SentryTimberIntegration(SentryLevel sentryLevel, SentryLevel sentryLevel2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? SentryLevel.ERROR : sentryLevel, (i4 & 2) != 0 ? SentryLevel.INFO : sentryLevel2);
    }
}
