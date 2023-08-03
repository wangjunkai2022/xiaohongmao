.class final Lcom/google/common/collect/w2$e;
.super Lcom/google/common/collect/c1;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/w2;->o(Ljava/lang/Iterable;Lcom/google/common/base/b0;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Iterable;

.field final synthetic c:Lcom/google/common/base/b0;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/w2$e;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/w2$e;->c:Lcom/google/common/base/b0;

    invoke-direct {p0}, Lcom/google/common/collect/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/w2$e;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/w2$e;->c:Lcom/google/common/base/b0;

    invoke-static {v0, v1}, Lcom/google/common/collect/x2;->x(Ljava/util/Iterator;Lcom/google/common/base/b0;)Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method
