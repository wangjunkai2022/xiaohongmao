.class public Lcom/google/common/collect/z1$a;
.super Lcom/google/common/collect/f3$g0;
.source "ForwardingSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$g0<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/z1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/z1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/z1$a;->b:Lcom/google/common/collect/z1;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/f3$g0;-><init>(Ljava/util/SortedMap;)V

    return-void
.end method
