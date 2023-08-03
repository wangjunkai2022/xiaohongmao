.class Lcom/google/common/collect/h$a;
.super Lcom/google/common/collect/j3$f;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j3$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/h$a;->a:Lcom/google/common/collect/h;

    invoke-direct {p0}, Lcom/google/common/collect/j3$f;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/h3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h$a;->a:Lcom/google/common/collect/h;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h$a;->a:Lcom/google/common/collect/h;

    invoke-virtual {v0}, Lcom/google/common/collect/h;->i()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
