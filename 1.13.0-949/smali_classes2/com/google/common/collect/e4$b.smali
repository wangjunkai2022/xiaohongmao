.class final Lcom/google/common/collect/e4$b;
.super Lcom/google/common/collect/t2;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t2<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/e4;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/e4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/e4$b;->f:Lcom/google/common/collect/e4;

    invoke-direct {p0}, Lcom/google/common/collect/t2;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/e4;Lcom/google/common/collect/e4$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/e4$b;-><init>(Lcom/google/common/collect/e4;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/e4$b;->f:Lcom/google/common/collect/e4;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultiset;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e4$b;->f:Lcom/google/common/collect/e4;

    iget-object v0, v0, Lcom/google/common/collect/e4;->d:Lcom/google/common/collect/q3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q3;->j(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e4$b;->f:Lcom/google/common/collect/e4;

    iget-object v0, v0, Lcom/google/common/collect/e4;->d:Lcom/google/common/collect/q3;

    invoke-virtual {v0}, Lcom/google/common/collect/q3;->D()I

    move-result v0

    return v0
.end method
