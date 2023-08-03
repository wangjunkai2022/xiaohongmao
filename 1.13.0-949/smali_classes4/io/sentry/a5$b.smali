.class final Lio/sentry/a5$b;
.super Ljava/lang/Object;
.source "SentryTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/a5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final c:Lio/sentry/a5$b;


# instance fields
.field private final a:Z

.field private final b:Lio/sentry/SpanStatus;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/sentry/a5$b;->d()Lio/sentry/a5$b;

    move-result-object v0

    sput-object v0, Lio/sentry/a5$b;->c:Lio/sentry/a5$b;

    return-void
.end method

.method private constructor <init>(ZLio/sentry/SpanStatus;)V
    .locals 0
    .param p2    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/sentry/a5$b;->a:Z

    .line 3
    iput-object p2, p0, Lio/sentry/a5$b;->b:Lio/sentry/SpanStatus;

    return-void
.end method

.method static synthetic a(Lio/sentry/a5$b;)Lio/sentry/SpanStatus;
    .locals 0

    iget-object p0, p0, Lio/sentry/a5$b;->b:Lio/sentry/SpanStatus;

    return-object p0
.end method

.method static synthetic b(Lio/sentry/a5$b;)Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/a5$b;->a:Z

    return p0
.end method

.method static c(Lio/sentry/SpanStatus;)Lio/sentry/a5$b;
    .locals 2
    .param p0    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/a5$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lio/sentry/a5$b;-><init>(ZLio/sentry/SpanStatus;)V

    return-object v0
.end method

.method private static d()Lio/sentry/a5$b;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/a5$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/a5$b;-><init>(ZLio/sentry/SpanStatus;)V

    return-object v0
.end method
