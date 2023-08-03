.class Lcom/google/common/collect/f$a;
.super Lcom/google/common/collect/f$c;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f;->c()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f<",
        "TE;>.c<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/f;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/f$a;->e:Lcom/google/common/collect/f;

    invoke-direct {p0, p1}, Lcom/google/common/collect/f$c;-><init>(Lcom/google/common/collect/f;)V

    return-void
.end method


# virtual methods
.method b(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f$a;->e:Lcom/google/common/collect/f;

    iget-object v0, v0, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/q3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q3;->j(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
