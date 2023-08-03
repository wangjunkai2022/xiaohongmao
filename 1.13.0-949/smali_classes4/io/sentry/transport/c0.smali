.class public abstract Lio/sentry/transport/c0;
.super Ljava/lang/Object;
.source "TransportResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/c0$c;,
        Lio/sentry/transport/c0$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/transport/c0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/transport/c0;-><init>()V

    return-void
.end method

.method public static a()Lio/sentry/transport/c0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, -0x1

    invoke-static {v0}, Lio/sentry/transport/c0;->b(I)Lio/sentry/transport/c0;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Lio/sentry/transport/c0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/transport/c0$b;

    invoke-direct {v0, p0}, Lio/sentry/transport/c0$b;-><init>(I)V

    return-object v0
.end method

.method public static e()Lio/sentry/transport/c0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lio/sentry/transport/c0$c;->a:Lio/sentry/transport/c0$c;

    return-object v0
.end method


# virtual methods
.method public abstract c()I
.end method

.method public abstract d()Z
.end method
