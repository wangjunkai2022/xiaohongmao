.class public final synthetic Lio/sentry/android/core/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/g;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/c;->a:Lio/sentry/android/core/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/c;->a:Lio/sentry/android/core/g;

    invoke-static {v0}, Lio/sentry/android/core/g;->b(Lio/sentry/android/core/g;)V

    return-void
.end method
