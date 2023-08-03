.class Lcom/google/common/collect/o4$e$a$a$a;
.super Lcom/google/common/collect/c;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/o4$e$a$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field c:I

.field final synthetic d:Lcom/google/common/collect/o4$e$a$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/o4$e$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/o4$e$a$a$a;->d:Lcom/google/common/collect/o4$e$a$a;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/common/collect/o4$e$a$a$a;->c:I

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/o4$e$a$a$a;->d:Lcom/google/common/collect/o4$e$a$a;

    iget-object v0, v0, Lcom/google/common/collect/o4$e$a$a;->a:Ljava/util/BitSet;

    iget v1, p0, Lcom/google/common/collect/o4$e$a$a$a;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/o4$e$a$a$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/o4$e$a$a$a;->d:Lcom/google/common/collect/o4$e$a$a;

    iget-object v0, v0, Lcom/google/common/collect/o4$e$a$a;->b:Lcom/google/common/collect/o4$e$a;

    iget-object v0, v0, Lcom/google/common/collect/o4$e$a;->d:Lcom/google/common/collect/o4$e;

    iget-object v0, v0, Lcom/google/common/collect/o4$e;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/o4$e$a$a$a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
