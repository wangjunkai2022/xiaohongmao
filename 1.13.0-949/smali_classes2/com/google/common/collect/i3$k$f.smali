.class Lcom/google/common/collect/i3$k$f;
.super Lcom/google/common/collect/i3$l;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i3$k;->d(Ljava/lang/Class;)Lcom/google/common/collect/i3$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/i3$l<",
        "TK0;TV0;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/google/common/collect/i3$k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i3$k;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i3$k$f;->c:Lcom/google/common/collect/i3$k;

    iput-object p2, p0, Lcom/google/common/collect/i3$k$f;->b:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/common/collect/i3$l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/h3;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i3$k$f;->j()Lcom/google/common/collect/n4;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/common/collect/n4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/i3$f;

    iget-object v1, p0, Lcom/google/common/collect/i3$k$f;->b:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/google/common/collect/i3$f;-><init>(Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/i3$k$f;->c:Lcom/google/common/collect/i3$k;

    invoke-virtual {v1}, Lcom/google/common/collect/i3$k;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/j3;->w(Ljava/util/Map;Lcom/google/common/base/i0;)Lcom/google/common/collect/n4;

    move-result-object v0

    return-object v0
.end method
