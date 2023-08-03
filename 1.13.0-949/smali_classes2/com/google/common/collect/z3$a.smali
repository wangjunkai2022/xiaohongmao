.class Lcom/google/common/collect/z3$a;
.super Lcom/google/common/collect/l;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/z3;->iterator()Lcom/google/common/collect/k5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/z3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/z3;Ljava/lang/Comparable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/z3$a;->c:Lcom/google/common/collect/z3;

    invoke-direct {p0, p2}, Lcom/google/common/collect/l;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/z3;->J()Ljava/lang/Comparable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/z3$a;->b:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/z3$a;->b(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/z3$a;->b:Ljava/lang/Comparable;

    invoke-static {p1, v0}, Lcom/google/common/collect/z3;->F(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/z3$a;->c:Lcom/google/common/collect/z3;

    iget-object v0, v0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p0;->i(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    :goto_0
    return-object p1
.end method
