.class public final Lio/sentry/e;
.super Ljava/lang/Object;
.source "BaggageHeader.java"


# annotations
.annotation build Lm8/a$b;
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "baggage"
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lio/sentry/d;Ljava/util/List;)Lio/sentry/e;
    .locals 2
    .param p0    # Lio/sentry/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/d;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/e;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/d;->d:Lio/sentry/o0;

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, v0}, Lio/sentry/d;->i(Ljava/util/List;ZLio/sentry/o0;)Lio/sentry/d;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/sentry/d;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/d;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Lio/sentry/e;

    invoke-direct {p1, p0}, Lio/sentry/e;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "baggage"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/e;->a:Ljava/lang/String;

    return-object v0
.end method
