.class public final Lio/sentry/android/core/m1;
.super Ljava/lang/Object;
.source "SentryAndroidDateProvider.java"

# interfaces
.implements Lio/sentry/k3;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private a:Lio/sentry/k3;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/sentry/o4;

    invoke-direct {v0}, Lio/sentry/o4;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/m1;->a:Lio/sentry/k3;

    return-void
.end method


# virtual methods
.method public now()Lio/sentry/j3;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/m1;->a:Lio/sentry/k3;

    invoke-interface {v0}, Lio/sentry/k3;->now()Lio/sentry/j3;

    move-result-object v0

    return-object v0
.end method
