.class final Lcom/google/common/collect/e3$u;
.super Lcom/google/common/collect/e3$o;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e3$o<",
        "TK;TV;",
        "Lcom/google/common/collect/e3$t<",
        "TK;TV;>;",
        "Lcom/google/common/collect/e3$u<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/e3;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3<",
            "TK;TV;",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e3$u<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/e3$o;-><init>(Lcom/google/common/collect/e3;II)V

    return-void
.end method


# virtual methods
.method bridge synthetic S()Lcom/google/common/collect/e3$o;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e3$u;->Z()Lcom/google/common/collect/e3$u;

    move-result-object v0

    return-object v0
.end method

.method public Y(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$j<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p1, Lcom/google/common/collect/e3$t;

    return-object p1
.end method

.method Z()Lcom/google/common/collect/e3$u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3$u<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e3$u;->Y(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$t;

    move-result-object p1

    return-object p1
.end method
