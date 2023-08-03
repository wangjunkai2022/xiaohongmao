.class public final Lio/sentry/util/thread/c;
.super Ljava/lang/Object;
.source "MainThreadChecker.java"

# interfaces
.implements Lio/sentry/util/thread/b;


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final a:J

.field private static final b:Lio/sentry/util/thread/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/util/thread/c;->a:J

    .line 2
    new-instance v0, Lio/sentry/util/thread/c;

    invoke-direct {v0}, Lio/sentry/util/thread/c;-><init>()V

    sput-object v0, Lio/sentry/util/thread/c;->b:Lio/sentry/util/thread/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lio/sentry/util/thread/c;
    .locals 1

    sget-object v0, Lio/sentry/util/thread/c;->b:Lio/sentry/util/thread/c;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Z
    .locals 1

    invoke-static {p0}, Lio/sentry/util/thread/a;->a(Lio/sentry/util/thread/b;)Z

    move-result v0

    return v0
.end method

.method public b(J)Z
    .locals 3

    sget-wide v0, Lio/sentry/util/thread/c;->a:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic c(Lio/sentry/protocol/t;)Z
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/util/thread/a;->b(Lio/sentry/util/thread/b;Lio/sentry/protocol/t;)Z

    move-result p1

    return p1
.end method

.method public synthetic d(Ljava/lang/Thread;)Z
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/util/thread/a;->c(Lio/sentry/util/thread/b;Ljava/lang/Thread;)Z

    move-result p1

    return p1
.end method
