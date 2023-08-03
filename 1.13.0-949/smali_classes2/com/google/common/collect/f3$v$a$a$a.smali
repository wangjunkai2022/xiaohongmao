.class Lcom/google/common/collect/f3$v$a$a$a;
.super Lcom/google/common/collect/q1;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f3$v$a$a;->b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/q1<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/f3$v$a$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f3$v$a$a;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/f3$v$a$a$a;->b:Lcom/google/common/collect/f3$v$a$a;

    iput-object p2, p0, Lcom/google/common/collect/f3$v$a$a$a;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/q1;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/f3$v$a$a$a;->M()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected M()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$v$a$a$a;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f3$v$a$a$a;->b:Lcom/google/common/collect/f3$v$a$a;

    iget-object v0, v0, Lcom/google/common/collect/f3$v$a$a;->b:Lcom/google/common/collect/f3$v$a;

    iget-object v0, v0, Lcom/google/common/collect/f3$v$a;->a:Lcom/google/common/collect/f3$v;

    invoke-virtual {p0}, Lcom/google/common/collect/q1;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/f3$n;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/common/collect/q1;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
