.class public final synthetic Lio/sentry/android/core/x0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/s2;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/LifecycleWatcher;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/LifecycleWatcher;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/x0;->a:Lio/sentry/android/core/LifecycleWatcher;

    iput-wide p2, p0, Lio/sentry/android/core/x0;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/r2;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/x0;->a:Lio/sentry/android/core/LifecycleWatcher;

    iget-wide v1, p0, Lio/sentry/android/core/x0;->b:J

    invoke-static {v0, v1, v2, p1}, Lio/sentry/android/core/LifecycleWatcher;->a(Lio/sentry/android/core/LifecycleWatcher;JLio/sentry/r2;)V

    return-void
.end method
