.class public final Lio/sentry/util/thread/d;
.super Ljava/lang/Object;
.source "NoOpMainThreadChecker.java"

# interfaces
.implements Lio/sentry/util/thread/b;


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final a:Lio/sentry/util/thread/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/util/thread/d;

    invoke-direct {v0}, Lio/sentry/util/thread/d;-><init>()V

    sput-object v0, Lio/sentry/util/thread/d;->a:Lio/sentry/util/thread/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lio/sentry/util/thread/d;
    .locals 1

    sget-object v0, Lio/sentry/util/thread/d;->a:Lio/sentry/util/thread/d;

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
    .locals 0

    const/4 p1, 0x0

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
