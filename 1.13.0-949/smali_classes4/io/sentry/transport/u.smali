.class public final Lio/sentry/transport/u;
.super Ljava/lang/Object;
.source "NoOpTransportGate.java"

# interfaces
.implements Lio/sentry/transport/r;


# static fields
.field private static final a:Lio/sentry/transport/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/transport/u;

    invoke-direct {v0}, Lio/sentry/transport/u;-><init>()V

    sput-object v0, Lio/sentry/transport/u;->a:Lio/sentry/transport/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/sentry/transport/u;
    .locals 1

    sget-object v0, Lio/sentry/transport/u;->a:Lio/sentry/transport/u;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
