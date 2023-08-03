.class Lcom/qennnsad/aknkaksd/util/fresco/c$a;
.super Lcom/facebook/drawee/controller/b;
.source "FrescoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/fresco/c;->c(Landroid/content/Context;ILcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)Lz0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/b<",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lcom/facebook/drawee/view/SimpleDraweeView;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/fresco/c$a;->b:Landroid/content/Context;

    iput p2, p0, Lcom/qennnsad/aknkaksd/util/fresco/c$a;->c:I

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/fresco/c$a;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/fresco/c$a;->i(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Error loading %s"

    invoke-static {v0, p2, p1, v1}, Lp0/a;->t(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/util/fresco/c$a;->h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V
    .locals 2
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Final image received! "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/g;->getWidth()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/g;->getHeight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "FrescoActivity"

    .line 3
    invoke-static {p3, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/fresco/c$a;->b:Landroid/content/Context;

    iget p3, p0, Lcom/qennnsad/aknkaksd/util/fresco/c$a;->c:I

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/fresco/c$a;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/g;->getWidth()I

    move-result v1

    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/g;->getHeight()I

    move-result p2

    .line 6
    invoke-static {p1, p3, v0, v1, p2}, Lcom/qennnsad/aknkaksd/util/fresco/c;->a(Landroid/content/Context;ILcom/facebook/drawee/view/SimpleDraweeView;II)V

    return-void
.end method

.method public i(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V
    .locals 0
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "Intermediate image received"

    invoke-static {p1, p2}, Lp0/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
