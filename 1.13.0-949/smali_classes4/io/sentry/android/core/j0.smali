.class public final Lio/sentry/android/core/j0;
.super Ljava/lang/Object;
.source "AppState.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static b:Lio/sentry/android/core/j0;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/core/j0;

    invoke-direct {v0}, Lio/sentry/android/core/j0;-><init>()V

    sput-object v0, Lio/sentry/android/core/j0;->b:Lio/sentry/android/core/j0;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/android/core/j0;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Lio/sentry/android/core/j0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lio/sentry/android/core/j0;->b:Lio/sentry/android/core/j0;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/j0;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method c()V
    .locals 1
    .annotation build Lm8/k;
    .end annotation

    new-instance v0, Lio/sentry/android/core/j0;

    invoke-direct {v0}, Lio/sentry/android/core/j0;-><init>()V

    sput-object v0, Lio/sentry/android/core/j0;->b:Lio/sentry/android/core/j0;

    return-void
.end method

.method declared-synchronized d(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/j0;->a:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
