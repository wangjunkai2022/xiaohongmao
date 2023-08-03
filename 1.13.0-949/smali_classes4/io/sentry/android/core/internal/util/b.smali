.class public final Lio/sentry/android/core/internal/util/b;
.super Ljava/lang/Object;
.source "AndroidMainThreadChecker.java"

# interfaces
.implements Lio/sentry/util/thread/b;


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final a:Lio/sentry/android/core/internal/util/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/core/internal/util/b;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/b;-><init>()V

    sput-object v0, Lio/sentry/android/core/internal/util/b;->a:Lio/sentry/android/core/internal/util/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lio/sentry/android/core/internal/util/b;
    .locals 1

    sget-object v0, Lio/sentry/android/core/internal/util/b;->a:Lio/sentry/android/core/internal/util/b;

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

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

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
