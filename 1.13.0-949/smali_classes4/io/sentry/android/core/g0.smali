.class public final synthetic Lio/sentry/android/core/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/h0;

.field public final synthetic b:Lio/sentry/n0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/h0;Lio/sentry/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/g0;->a:Lio/sentry/android/core/h0;

    iput-object p2, p0, Lio/sentry/android/core/g0;->b:Lio/sentry/n0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/g0;->a:Lio/sentry/android/core/h0;

    iget-object v1, p0, Lio/sentry/android/core/g0;->b:Lio/sentry/n0;

    invoke-static {v0, v1}, Lio/sentry/android/core/h0;->d(Lio/sentry/android/core/h0;Lio/sentry/n0;)V

    return-void
.end method
