.class public final synthetic Lio/sentry/android/core/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/android/core/b$a;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/d0;

.field public final synthetic b:Lio/sentry/n0;

.field public final synthetic c:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/d0;Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/c0;->a:Lio/sentry/android/core/d0;

    iput-object p2, p0, Lio/sentry/android/core/c0;->b:Lio/sentry/n0;

    iput-object p3, p0, Lio/sentry/android/core/c0;->c:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/android/core/k0;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/c0;->a:Lio/sentry/android/core/d0;

    iget-object v1, p0, Lio/sentry/android/core/c0;->b:Lio/sentry/n0;

    iget-object v2, p0, Lio/sentry/android/core/c0;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1, v2, p1}, Lio/sentry/android/core/d0;->b(Lio/sentry/android/core/d0;Lio/sentry/n0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/k0;)V

    return-void
.end method
