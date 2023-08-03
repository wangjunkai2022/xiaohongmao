.class public Lcom/google/common/collect/t1$a;
.super Lcom/google/common/collect/f3$q;
.source "ForwardingNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$q<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/t1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/t1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/t1$a;->d:Lcom/google/common/collect/t1;

    invoke-direct {p0}, Lcom/google/common/collect/f3$q;-><init>()V

    return-void
.end method


# virtual methods
.method protected X()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/t1$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/t1$a$a;-><init>(Lcom/google/common/collect/t1$a;)V

    return-object v0
.end method

.method Y()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/t1$a;->d:Lcom/google/common/collect/t1;

    return-object v0
.end method
