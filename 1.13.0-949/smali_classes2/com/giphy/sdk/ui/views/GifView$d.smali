.class public final Lcom/giphy/sdk/ui/views/GifView$d;
.super Lcom/facebook/drawee/controller/b;
.source "GifView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GifView;->getControllerListener()Lcom/giphy/sdk/ui/views/GifView$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/b<",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J*\u0010\t\u001a\u00020\u00082\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001c\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/giphy/sdk/ui/views/GifView$d",
        "Lcom/facebook/drawee/controller/b;",
        "Lcom/facebook/imagepipeline/image/g;",
        "",
        "id",
        "imageInfo",
        "Landroid/graphics/drawable/Animatable;",
        "anim",
        "",
        "h",
        "",
        "throwable",
        "b",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/giphy/sdk/ui/views/GifView;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GifView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView$d;->b:Lcom/giphy/sdk/ui/views/GifView;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load media: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GifView$d;->b:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GifView;->getGifCallback()Lcom/giphy/sdk/ui/views/GifView$b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcom/giphy/sdk/ui/views/GifView$b;->a(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/giphy/sdk/ui/views/GifView$d;->h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView$d;->b:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/giphy/sdk/ui/views/GifView;->A(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
