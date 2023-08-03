.class Lcom/google/common/collect/i3$k$b;
.super Lcom/google/common/collect/i3$j;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i3$k;->i()Lcom/google/common/collect/i3$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/i3$j<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/i3$k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i3$k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i3$k$b;->b:Lcom/google/common/collect/i3$k;

    invoke-direct {p0}, Lcom/google/common/collect/i3$j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/h3;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i3$k$b;->j()Lcom/google/common/collect/a3;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/common/collect/a3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/a3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i3$k$b;->b:Lcom/google/common/collect/i3$k;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/i3$k;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/i3$i;->b()Lcom/google/common/base/i0;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/j3;->u(Ljava/util/Map;Lcom/google/common/base/i0;)Lcom/google/common/collect/a3;

    move-result-object v0

    return-object v0
.end method
