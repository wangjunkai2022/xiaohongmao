.class public Lcom/google/common/collect/t1$b;
.super Lcom/google/common/collect/f3$e0;
.source "ForwardingNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$e0<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/t1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/t1$b;->b:Lcom/google/common/collect/t1;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/f3$e0;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method
