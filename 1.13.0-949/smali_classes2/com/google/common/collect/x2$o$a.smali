.class Lcom/google/common/collect/x2$o$a;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/x2$o;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/common/collect/t3<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Comparator;

.field final synthetic b:Lcom/google/common/collect/x2$o;


# direct methods
.method constructor <init>(Lcom/google/common/collect/x2$o;Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/x2$o$a;->b:Lcom/google/common/collect/x2$o;

    iput-object p2, p0, Lcom/google/common/collect/x2$o$a;->a:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/t3;Lcom/google/common/collect/t3;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/t3<",
            "TT;>;",
            "Lcom/google/common/collect/t3<",
            "TT;>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x2$o$a;->a:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/t3;->peek()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Lcom/google/common/collect/t3;->peek()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/t3;

    check-cast p2, Lcom/google/common/collect/t3;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/x2$o$a;->a(Lcom/google/common/collect/t3;Lcom/google/common/collect/t3;)I

    move-result p1

    return p1
.end method
