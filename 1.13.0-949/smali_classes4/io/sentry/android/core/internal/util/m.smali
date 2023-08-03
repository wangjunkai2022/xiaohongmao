.class public final synthetic Lio/sentry/android/core/internal/util/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/m;->a:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/internal/util/m;->a:Lio/sentry/SentryOptions;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/internal/util/n;->b(Lio/sentry/SentryOptions;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
