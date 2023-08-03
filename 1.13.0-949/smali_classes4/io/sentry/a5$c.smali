.class final Lio/sentry/a5$c;
.super Ljava/lang/Object;
.source "SentryTracer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/a5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/sentry/e5;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/a5$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/sentry/a5$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/e5;Lio/sentry/e5;)I
    .locals 0
    .param p1    # Lio/sentry/e5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/e5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/e5;->L()Lio/sentry/j3;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Lio/sentry/e5;->L()Lio/sentry/j3;

    move-result-object p2

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p1, p2}, Lio/sentry/j3;->a(Lio/sentry/j3;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    check-cast p1, Lio/sentry/e5;

    check-cast p2, Lio/sentry/e5;

    invoke-virtual {p0, p1, p2}, Lio/sentry/a5$c;->a(Lio/sentry/e5;Lio/sentry/e5;)I

    move-result p1

    return p1
.end method
