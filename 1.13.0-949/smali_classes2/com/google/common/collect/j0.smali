.class final Lcom/google/common/collect/j0;
.super Ljava/lang/Object;
.source "Count.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lh3/b;
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/common/collect/j0;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/j0;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/j0;->a:I

    return-void
.end method

.method public b(I)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/j0;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/j0;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/j0;->a:I

    return v0
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/j0;->a:I

    .line 2
    iput p1, p0, Lcom/google/common/collect/j0;->a:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/j0;->a:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/j0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/j0;

    iget p1, p1, Lcom/google/common/collect/j0;->a:I

    iget v0, p0, Lcom/google/common/collect/j0;->a:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/j0;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/j0;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
