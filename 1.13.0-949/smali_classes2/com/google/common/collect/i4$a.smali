.class final Lcom/google/common/collect/i4$a;
.super Ljava/lang/Object;
.source "RegularImmutableTable.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i4;->p(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/i4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/common/collect/d5$a<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Comparator;

.field final synthetic b:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i4$a;->a:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/common/collect/i4$a;->b:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/d5$a;Lcom/google/common/collect/d5$a;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV;>;",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV;>;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i4$a;->a:Ljava/util/Comparator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/d5$a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/common/collect/d5$a;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/i4$a;->b:Ljava/util/Comparator;

    if-nez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-interface {p1}, Lcom/google/common/collect/d5$a;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Lcom/google/common/collect/d5$a;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    :goto_1
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/d5$a;

    check-cast p2, Lcom/google/common/collect/d5$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/i4$a;->a(Lcom/google/common/collect/d5$a;Lcom/google/common/collect/d5$a;)I

    move-result p1

    return p1
.end method
