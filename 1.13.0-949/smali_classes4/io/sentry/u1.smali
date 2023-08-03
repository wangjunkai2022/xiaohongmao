.class public final Lio/sentry/u1;
.super Ljava/lang/Object;
.source "NoOpLogger.java"

# interfaces
.implements Lio/sentry/o0;


# static fields
.field private static final a:Lio/sentry/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/u1;

    invoke-direct {v0}, Lio/sentry/u1;-><init>()V

    sput-object v0, Lio/sentry/u1;->a:Lio/sentry/u1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lio/sentry/u1;
    .locals 1

    sget-object v0, Lio/sentry/u1;->a:Lio/sentry/u1;

    return-object v0
.end method


# virtual methods
.method public varargs a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public varargs c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public d(Lio/sentry/SentryLevel;)Z
    .locals 0
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
