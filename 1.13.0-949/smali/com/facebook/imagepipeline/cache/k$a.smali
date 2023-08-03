.class public Lcom/facebook/imagepipeline/cache/k$a;
.super Ljava/lang/Object;
.source "CountingMemoryCacheInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/cache/k$b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/cache/k$b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/facebook/imagepipeline/cache/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "lruSize",
            "params"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p3, Lcom/facebook/imagepipeline/cache/v;->a:I

    iput v0, p0, Lcom/facebook/imagepipeline/cache/k$a;->a:I

    .line 3
    iget v0, p3, Lcom/facebook/imagepipeline/cache/v;->b:I

    iput v0, p0, Lcom/facebook/imagepipeline/cache/k$a;->b:I

    .line 4
    iget p3, p3, Lcom/facebook/imagepipeline/cache/v;->e:I

    iput p3, p0, Lcom/facebook/imagepipeline/cache/k$a;->c:I

    .line 5
    iput p1, p0, Lcom/facebook/imagepipeline/cache/k$a;->d:I

    .line 6
    iput p2, p0, Lcom/facebook/imagepipeline/cache/k$a;->e:I

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/k$a;->f:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/k$a;->g:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/k$a;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/k$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/k$b;

    .line 2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/k$b;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/k$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/k$b;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/k$b;->a()V

    goto :goto_1

    :cond_1
    return-void
.end method
