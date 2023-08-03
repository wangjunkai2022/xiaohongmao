.class public final synthetic Lio/sentry/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lio/sentry/d0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/d0;

    invoke-direct {v0}, Lio/sentry/d0;-><init>()V

    sput-object v0, Lio/sentry/d0;->a:Lio/sentry/d0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lio/sentry/e0;->b()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
