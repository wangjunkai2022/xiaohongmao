.class public final Lio/sentry/transport/m;
.super Ljava/lang/Object;
.source "CurrentDateProvider.java"

# interfaces
.implements Lio/sentry/transport/o;


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final a:Lio/sentry/transport/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/transport/m;

    invoke-direct {v0}, Lio/sentry/transport/m;-><init>()V

    sput-object v0, Lio/sentry/transport/m;->a:Lio/sentry/transport/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/sentry/transport/o;
    .locals 1

    sget-object v0, Lio/sentry/transport/m;->a:Lio/sentry/transport/o;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
