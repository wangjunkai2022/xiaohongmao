.class Lcom/google/common/cache/j$k0$b;
.super Lcom/google/common/collect/l;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/j$k0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l<",
        "Lcom/google/common/cache/n<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/cache/j$k0;


# direct methods
.method constructor <init>(Lcom/google/common/cache/j$k0;Lcom/google/common/cache/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/j$k0$b;->b:Lcom/google/common/cache/j$k0;

    invoke-direct {p0, p2}, Lcom/google/common/collect/l;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/cache/n;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/j$k0$b;->b(Lcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/google/common/cache/n;)Lcom/google/common/cache/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/n;->e()Lcom/google/common/cache/n;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/j$k0$b;->b:Lcom/google/common/cache/j$k0;

    iget-object v0, v0, Lcom/google/common/cache/j$k0;->a:Lcom/google/common/cache/n;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method
