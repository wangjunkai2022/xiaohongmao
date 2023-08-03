.class final Lcom/google/common/collect/e3$y;
.super Lcom/google/common/collect/e3$i;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e3<",
        "TK;TV;TE;TS;>.i<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/google/common/collect/e3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/e3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/e3$y;->i:Lcom/google/common/collect/e3;

    invoke-direct {p0, p1}, Lcom/google/common/collect/e3$i;-><init>(Lcom/google/common/collect/e3;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/e3$i;->c()Lcom/google/common/collect/e3$j0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/e3$j0;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
