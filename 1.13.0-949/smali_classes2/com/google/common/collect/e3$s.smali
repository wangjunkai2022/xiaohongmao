.class final Lcom/google/common/collect/e3$s;
.super Lcom/google/common/collect/e3$o;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e3$o<",
        "TK;",
        "Lcom/google/common/collect/d3$a;",
        "Lcom/google/common/collect/e3$r<",
        "TK;>;",
        "Lcom/google/common/collect/e3$s<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/e3;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3<",
            "TK;",
            "Lcom/google/common/collect/d3$a;",
            "Lcom/google/common/collect/e3$r<",
            "TK;>;",
            "Lcom/google/common/collect/e3$s<",
            "TK;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/e3$o;-><init>(Lcom/google/common/collect/e3;II)V

    return-void
.end method


# virtual methods
.method bridge synthetic S()Lcom/google/common/collect/e3$o;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e3$s;->Z()Lcom/google/common/collect/e3$s;

    move-result-object v0

    return-object v0
.end method

.method public Y(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$j<",
            "TK;",
            "Lcom/google/common/collect/d3$a;",
            "*>;)",
            "Lcom/google/common/collect/e3$r<",
            "TK;>;"
        }
    .end annotation

    check-cast p1, Lcom/google/common/collect/e3$r;

    return-object p1
.end method

.method Z()Lcom/google/common/collect/e3$s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3$s<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e3$s;->Y(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$r;

    move-result-object p1

    return-object p1
.end method
