.class final enum Lcom/google/common/collect/TreeMultiset$e$a;
.super Lcom/google/common/collect/TreeMultiset$e;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/TreeMultiset$e;-><init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$a;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/TreeMultiset$f;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "*>;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$f;->c(Lcom/google/common/collect/TreeMultiset$f;)I

    move-result p1

    return p1
.end method

.method b(Lcom/google/common/collect/TreeMultiset$f;)J
    .locals 2
    .param p1    # Lcom/google/common/collect/TreeMultiset$f;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "*>;)J"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$f;->e(Lcom/google/common/collect/TreeMultiset$f;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
