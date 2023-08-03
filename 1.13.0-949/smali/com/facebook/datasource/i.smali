.class public Lcom/facebook/datasource/i;
.super Ljava/lang/Object;
.source "RetainingDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/m<",
        "Lcom/facebook/datasource/d<",
        "TT;>;>;"
    }
.end annotation

.annotation build Ls7/c;
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/datasource/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/datasource/i;->a:Ljava/util/Set;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/facebook/datasource/i;->b:Lcom/facebook/common/internal/m;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/datasource/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/datasource/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/datasource/i$b;-><init>(Lcom/facebook/datasource/i$a;)V

    .line 2
    iget-object v1, p0, Lcom/facebook/datasource/i;->b:Lcom/facebook/common/internal/m;

    invoke-virtual {v0, v1}, Lcom/facebook/datasource/i$b;->F(Lcom/facebook/common/internal/m;)V

    .line 3
    iget-object v1, p0, Lcom/facebook/datasource/i;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b(Lcom/facebook/common/internal/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/i;->b:Lcom/facebook/common/internal/m;

    .line 2
    iget-object v0, p0, Lcom/facebook/datasource/i;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/datasource/i$b;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/datasource/a;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/facebook/datasource/i$b;->F(Lcom/facebook/common/internal/m;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/datasource/i;->a()Lcom/facebook/datasource/d;

    move-result-object v0

    return-object v0
.end method
