.class public final synthetic Lio/sentry/android/core/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/a0;

.field public final synthetic b:Lio/sentry/w0;

.field public final synthetic c:Lio/sentry/k2;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/a0;Lio/sentry/w0;Lio/sentry/k2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/y;->a:Lio/sentry/android/core/a0;

    iput-object p2, p0, Lio/sentry/android/core/y;->b:Lio/sentry/w0;

    iput-object p3, p0, Lio/sentry/android/core/y;->c:Lio/sentry/k2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/y;->a:Lio/sentry/android/core/a0;

    iget-object v1, p0, Lio/sentry/android/core/y;->b:Lio/sentry/w0;

    iget-object v2, p0, Lio/sentry/android/core/y;->c:Lio/sentry/k2;

    invoke-static {v0, v1, v2}, Lio/sentry/android/core/a0;->e(Lio/sentry/android/core/a0;Lio/sentry/w0;Lio/sentry/k2;)Lio/sentry/m2;

    move-result-object v0

    return-object v0
.end method
