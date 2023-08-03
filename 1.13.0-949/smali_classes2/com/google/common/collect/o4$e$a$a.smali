.class Lcom/google/common/collect/o4$e$a$a;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/o4$e$a;->d()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/BitSet;

.field final synthetic b:Lcom/google/common/collect/o4$e$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/o4$e$a;Ljava/util/BitSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/o4$e$a$a;->b:Lcom/google/common/collect/o4$e$a;

    iput-object p2, p0, Lcom/google/common/collect/o4$e$a$a;->a:Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/o4$e$a$a;->b:Lcom/google/common/collect/o4$e$a;

    iget-object v0, v0, Lcom/google/common/collect/o4$e$a;->d:Lcom/google/common/collect/o4$e;

    iget-object v0, v0, Lcom/google/common/collect/o4$e;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/o4$e$a$a;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/o4$e$a$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/o4$e$a$a$a;-><init>(Lcom/google/common/collect/o4$e$a$a;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/o4$e$a$a;->b:Lcom/google/common/collect/o4$e$a;

    iget-object v0, v0, Lcom/google/common/collect/o4$e$a;->d:Lcom/google/common/collect/o4$e;

    iget v0, v0, Lcom/google/common/collect/o4$e;->a:I

    return v0
.end method
