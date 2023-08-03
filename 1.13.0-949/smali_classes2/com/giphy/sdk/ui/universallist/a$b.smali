.class public final Lcom/giphy/sdk/ui/universallist/a$b;
.super Ljava/lang/Object;
.source "DynamicTextViewHolder.kt"

# interfaces
.implements Lcom/giphy/sdk/ui/views/GifView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/universallist/a;->b(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J,\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0012\u0010\u000e\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/giphy/sdk/ui/universallist/a$b",
        "Lcom/giphy/sdk/ui/views/GifView$b;",
        "Lcom/facebook/imagepipeline/image/g;",
        "imageInfo",
        "Landroid/graphics/drawable/Animatable;",
        "anim",
        "",
        "loopDuration",
        "",
        "loopCount",
        "",
        "b",
        "",
        "throwable",
        "a",
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
.field final synthetic a:Lcom/giphy/sdk/ui/universallist/a;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/universallist/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/a$b;->a:Lcom/giphy/sdk/ui/universallist/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/a$b;->a:Lcom/giphy/sdk/ui/universallist/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/giphy/sdk/ui/universallist/a;->e(Lcom/giphy/sdk/ui/universallist/a;Z)V

    return-void
.end method

.method public b(Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;JI)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/image/g;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Animatable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/a$b;->a:Lcom/giphy/sdk/ui/universallist/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/giphy/sdk/ui/universallist/a;->e(Lcom/giphy/sdk/ui/universallist/a;Z)V

    return-void
.end method
