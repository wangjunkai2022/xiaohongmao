.class final Lcom/google/common/collect/j5$a;
.super Lcom/google/common/collect/j5;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/j5;->g(Lcom/google/common/base/q;)Lcom/google/common/collect/j5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/q;


# direct methods
.method constructor <init>(Lcom/google/common/base/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/j5$a;->a:Lcom/google/common/base/q;

    invoke-direct {p0}, Lcom/google/common/collect/j5;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j5$a;->a:Lcom/google/common/base/q;

    invoke-interface {v0, p1}, Lcom/google/common/base/q;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method
