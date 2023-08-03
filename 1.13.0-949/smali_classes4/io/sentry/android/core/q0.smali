.class public final synthetic Lio/sentry/android/core/q0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/r0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/q0;->a:Lio/sentry/android/core/r0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/q0;->a:Lio/sentry/android/core/r0;

    invoke-static {v0}, Lio/sentry/android/core/r0;->c(Lio/sentry/android/core/r0;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
