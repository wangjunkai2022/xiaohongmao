.class public final synthetic Lio/sentry/android/core/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/o;

.field public final synthetic b:Lio/sentry/v0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/o;Lio/sentry/v0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/m;->a:Lio/sentry/android/core/o;

    iput-object p2, p0, Lio/sentry/android/core/m;->b:Lio/sentry/v0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/m;->a:Lio/sentry/android/core/o;

    iget-object v1, p0, Lio/sentry/android/core/m;->b:Lio/sentry/v0;

    invoke-static {v0, v1}, Lio/sentry/android/core/o;->d(Lio/sentry/android/core/o;Lio/sentry/v0;)V

    return-void
.end method
