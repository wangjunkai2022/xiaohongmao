.class public final Lcom/giphy/sdk/ui/views/GifView$g;
.super Ljava/lang/Object;
.source "GifView.kt"

# interfaces
.implements Lcom/giphy/sdk/core/network/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GifView;->K(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giphy/sdk/core/network/api/a<",
        "Lcom/giphy/sdk/core/network/response/MediaResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/giphy/sdk/ui/views/GifView$g",
        "Lcom/giphy/sdk/core/network/api/a;",
        "Lcom/giphy/sdk/core/network/response/MediaResponse;",
        "result",
        "",
        "e",
        "",
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
.field final synthetic a:Lcom/giphy/sdk/ui/views/GifView;

.field final synthetic b:Lcom/giphy/sdk/core/models/enums/RenditionType;

.field final synthetic c:Landroid/graphics/drawable/Drawable;

.field final synthetic d:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GifView;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/core/models/enums/RenditionType;",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView$g;->a:Lcom/giphy/sdk/ui/views/GifView;

    iput-object p2, p0, Lcom/giphy/sdk/ui/views/GifView$g;->b:Lcom/giphy/sdk/core/models/enums/RenditionType;

    iput-object p3, p0, Lcom/giphy/sdk/ui/views/GifView$g;->c:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/giphy/sdk/ui/views/GifView$g;->d:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/giphy/sdk/core/network/response/MediaResponse;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/views/GifView$g;->b(Lcom/giphy/sdk/core/network/response/MediaResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/giphy/sdk/core/network/response/MediaResponse;Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Lcom/giphy/sdk/core/network/response/MediaResponse;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/MediaResponse;->getData()Lcom/giphy/sdk/core/models/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Media;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GifView$g;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/views/GifView;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView$g;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/MediaResponse;->getData()Lcom/giphy/sdk/core/models/Media;

    move-result-object v1

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GifView$g;->b:Lcom/giphy/sdk/core/models/enums/RenditionType;

    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GifView$g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/giphy/sdk/ui/views/GifView;->I(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView$g;->d:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_3
    return-void
.end method
