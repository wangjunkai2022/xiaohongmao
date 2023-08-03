.class public final Lio/sentry/android/core/q;
.super Ljava/lang/Object;
.source "AndroidDateUtils.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final a:Lio/sentry/k3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/core/m1;

    invoke-direct {v0}, Lio/sentry/android/core/m1;-><init>()V

    sput-object v0, Lio/sentry/android/core/q;->a:Lio/sentry/k3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/sentry/j3;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lio/sentry/android/core/q;->a:Lio/sentry/k3;

    invoke-interface {v0}, Lio/sentry/k3;->now()Lio/sentry/j3;

    move-result-object v0

    return-object v0
.end method
