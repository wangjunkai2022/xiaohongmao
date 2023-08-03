.class final Lcom/google/common/collect/v2$d;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/collect/u2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/u2<",
        "TE;>;"
    }
.end annotation

.annotation build Lh3/d;
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/e3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e3<",
            "TE;",
            "Lcom/google/common/collect/d3$a;",
            "**>;"
        }
    .end annotation

    .annotation build Lh3/d;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/d3;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/common/base/Equivalence;->c()Lcom/google/common/base/Equivalence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/d3;->h(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/d3;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/e3;->e(Lcom/google/common/collect/d3;)Lcom/google/common/collect/e3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/v2$d;->a:Lcom/google/common/collect/e3;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/d3;Lcom/google/common/collect/v2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/v2$d;-><init>(Lcom/google/common/collect/d3;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/v2$d;->a:Lcom/google/common/collect/e3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e3;->h(Ljava/lang/Object;)Lcom/google/common/collect/e3$j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/common/collect/e3$j;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/v2$d;->a:Lcom/google/common/collect/e3;

    sget-object v1, Lcom/google/common/collect/d3$a;->a:Lcom/google/common/collect/d3$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/e3;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/d3$a;

    if-nez v0, :cond_0

    return-object p1
.end method
