.class public final Lio/sentry/e2;
.super Ljava/lang/Object;
.source "NoOpTransactionProfiler.java"

# interfaces
.implements Lio/sentry/x0;


# static fields
.field private static final a:Lio/sentry/e2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/e2;

    invoke-direct {v0}, Lio/sentry/e2;-><init>()V

    sput-object v0, Lio/sentry/e2;->a:Lio/sentry/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lio/sentry/e2;
    .locals 1

    sget-object v0, Lio/sentry/e2;->a:Lio/sentry/e2;

    return-object v0
.end method


# virtual methods
.method public a(Lio/sentry/w0;Lio/sentry/k2;)Lio/sentry/m2;
    .locals 0
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/k2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lio/sentry/w0;)V
    .locals 0
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method
