.class Lcom/google/common/collect/b3$m$a;
.super Lcom/google/common/collect/h5;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/b3$m;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h5<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/b3$m;


# direct methods
.method constructor <init>(Lcom/google/common/collect/b3$m;Ljava/util/ListIterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/b3$m$a;->b:Lcom/google/common/collect/b3$m;

    invoke-direct {p0, p2}, Lcom/google/common/collect/h5;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3$m$a;->b:Lcom/google/common/collect/b3$m;

    iget-object v0, v0, Lcom/google/common/collect/b3$m;->b:Lcom/google/common/base/q;

    invoke-interface {v0, p1}, Lcom/google/common/base/q;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
