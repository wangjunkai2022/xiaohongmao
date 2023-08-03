.class Lcom/google/common/collect/i3$k$c;
.super Lcom/google/common/collect/i3$l;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i3$k;->f(I)Lcom/google/common/collect/i3$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/i3$l<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/google/common/collect/i3$k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i3$k;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i3$k$c;->c:Lcom/google/common/collect/i3$k;

    iput p2, p0, Lcom/google/common/collect/i3$k$c;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/i3$l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/h3;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i3$k$c;->j()Lcom/google/common/collect/n4;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/common/collect/n4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i3$k$c;->c:Lcom/google/common/collect/i3$k;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/i3$k;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/i3$g;

    iget v2, p0, Lcom/google/common/collect/i3$k$c;->b:I

    invoke-direct {v1, v2}, Lcom/google/common/collect/i3$g;-><init>(I)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/j3;->w(Ljava/util/Map;Lcom/google/common/base/i0;)Lcom/google/common/collect/n4;

    move-result-object v0

    return-object v0
.end method
