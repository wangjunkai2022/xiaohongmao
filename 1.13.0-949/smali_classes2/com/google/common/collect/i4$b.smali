.class final Lcom/google/common/collect/i4$b;
.super Lcom/google/common/collect/t2;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t2<",
        "Lcom/google/common/collect/d5$a<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/i4;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/i4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/i4$b;->f:Lcom/google/common/collect/i4;

    invoke-direct {p0}, Lcom/google/common/collect/t2;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/i4;Lcom/google/common/collect/i4$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/i4$b;-><init>(Lcom/google/common/collect/i4;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/d5$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/d5$a;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/i4$b;->f:Lcom/google/common/collect/i4;

    invoke-interface {p1}, Lcom/google/common/collect/d5$a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/d5$a;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/common/collect/d5$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/i4$b;->q(I)Lcom/google/common/collect/d5$a;

    move-result-object p1

    return-object p1
.end method

.method q(I)Lcom/google/common/collect/d5$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i4$b;->f:Lcom/google/common/collect/i4;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i4;->s(I)Lcom/google/common/collect/d5$a;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i4$b;->f:Lcom/google/common/collect/i4;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->size()I

    move-result v0

    return v0
.end method
