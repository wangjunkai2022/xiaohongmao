.class public final Lio/sentry/q2;
.super Ljava/lang/Object;
.source "SamplingContext.java"


# instance fields
.field private final a:Lio/sentry/p5;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/j;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/p5;Lio/sentry/j;)V
    .locals 1
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/j;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transactionContexts is required"

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/p5;

    iput-object p1, p0, Lio/sentry/q2;->a:Lio/sentry/p5;

    .line 3
    iput-object p2, p0, Lio/sentry/q2;->b:Lio/sentry/j;

    return-void
.end method


# virtual methods
.method public a()Lio/sentry/j;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/q2;->b:Lio/sentry/j;

    return-object v0
.end method

.method public b()Lio/sentry/p5;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/q2;->a:Lio/sentry/p5;

    return-object v0
.end method
