.class final Lcom/google/common/collect/j$b;
.super Lcom/google/common/collect/f3$q;
.source "AbstractNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$q<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/j;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/j$b;->d:Lcom/google/common/collect/j;

    invoke-direct {p0}, Lcom/google/common/collect/f3$q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/j;Lcom/google/common/collect/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/j$b;-><init>(Lcom/google/common/collect/j;)V

    return-void
.end method


# virtual methods
.method X()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j$b;->d:Lcom/google/common/collect/j;

    invoke-virtual {v0}, Lcom/google/common/collect/j;->b()Ljava/util/Iterator;

    move-result-object v0

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

    iget-object v0, p0, Lcom/google/common/collect/j$b;->d:Lcom/google/common/collect/j;

    return-object v0
.end method
