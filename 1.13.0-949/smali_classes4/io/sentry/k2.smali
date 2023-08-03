.class public final Lio/sentry/k2;
.super Ljava/lang/Object;
.source "PerformanceCollectionData.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/r1;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/i;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:Lio/sentry/r1;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Lio/sentry/i;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/k2;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/k2;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/sentry/k2;->c:Lio/sentry/r1;

    .line 5
    iput-object v0, p0, Lio/sentry/k2;->d:Lio/sentry/i;

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/i;)V
    .locals 0
    .param p1    # Lio/sentry/i;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/sentry/k2;->d:Lio/sentry/i;

    :cond_0
    return-void
.end method

.method public b(Lio/sentry/r1;)V
    .locals 0
    .param p1    # Lio/sentry/r1;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/sentry/k2;->c:Lio/sentry/r1;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/k2;->c:Lio/sentry/r1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lio/sentry/k2;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iput-object v1, p0, Lio/sentry/k2;->c:Lio/sentry/r1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/k2;->d:Lio/sentry/i;

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lio/sentry/k2;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object v1, p0, Lio/sentry/k2;->d:Lio/sentry/i;

    :cond_1
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/i;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/k2;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/r1;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/k2;->a:Ljava/util/List;

    return-object v0
.end method
