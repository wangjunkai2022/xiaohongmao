.class final Lio/sentry/h3$b;
.super Ljava/lang/Object;
.source "SentryClient.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/sentry/f;",
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

.method synthetic constructor <init>(Lio/sentry/h3$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/sentry/h3$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/f;Lio/sentry/f;)I
    .locals 0
    .param p1    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p1}, Lio/sentry/f;->m()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2}, Lio/sentry/f;->m()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

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

    check-cast p1, Lio/sentry/f;

    check-cast p2, Lio/sentry/f;

    invoke-virtual {p0, p1, p2}, Lio/sentry/h3$b;->a(Lio/sentry/f;Lio/sentry/f;)I

    move-result p1

    return p1
.end method
