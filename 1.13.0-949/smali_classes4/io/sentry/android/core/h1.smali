.class public final synthetic Lio/sentry/android/core/h1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/u2$a;

.field public final synthetic b:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/u2$a;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/h1;->a:Lio/sentry/u2$a;

    iput-object p2, p0, Lio/sentry/android/core/h1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/h1;->a:Lio/sentry/u2$a;

    iget-object v1, p0, Lio/sentry/android/core/h1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1}, Lio/sentry/android/core/i1;->b(Lio/sentry/u2$a;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
