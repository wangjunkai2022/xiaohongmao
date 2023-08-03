.class public final Lio/sentry/f2;
.super Ljava/lang/Object;
.source "NoOpTransportFactory.java"

# interfaces
.implements Lio/sentry/y0;


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final a:Lio/sentry/f2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/f2;

    invoke-direct {v0}, Lio/sentry/f2;-><init>()V

    sput-object v0, Lio/sentry/f2;->a:Lio/sentry/f2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/sentry/f2;
    .locals 1

    sget-object v0, Lio/sentry/f2;->a:Lio/sentry/f2;

    return-object v0
.end method


# virtual methods
.method public a(Lio/sentry/SentryOptions;Lio/sentry/o2;)Lio/sentry/transport/q;
    .locals 0
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/transport/t;->a()Lio/sentry/transport/t;

    move-result-object p1

    return-object p1
.end method
