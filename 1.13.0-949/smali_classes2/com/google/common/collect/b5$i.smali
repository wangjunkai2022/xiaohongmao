.class abstract Lcom/google/common/collect/b5$i;
.super Lcom/google/common/collect/o4$k;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/o4$k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/b5;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/b5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b5$i;->a:Lcom/google/common/collect/b5;

    invoke-direct {p0}, Lcom/google/common/collect/o4$k;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/b5;Lcom/google/common/collect/b5$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/b5$i;-><init>(Lcom/google/common/collect/b5;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b5$i;->a:Lcom/google/common/collect/b5;

    iget-object v0, v0, Lcom/google/common/collect/b5;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b5$i;->a:Lcom/google/common/collect/b5;

    iget-object v0, v0, Lcom/google/common/collect/b5;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
