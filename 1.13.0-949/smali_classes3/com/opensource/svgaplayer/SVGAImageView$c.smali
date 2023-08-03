.class public final Lcom/opensource/svgaplayer/SVGAImageView$c;
.super Ljava/lang/Object;
.source "SVGAImageView.kt"

# interfaces
.implements Lcom/opensource/svgaplayer/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAImageView;->o(Ljava/lang/ref/WeakReference;)Lcom/opensource/svgaplayer/i$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/opensource/svgaplayer/SVGAImageView$c",
        "Lcom/opensource/svgaplayer/i$d;",
        "Lcom/opensource/svgaplayer/l;",
        "videoItem",
        "",
        "b",
        "a",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lcom/opensource/svgaplayer/l;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/l;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->l(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/l;)V

    :cond_0
    return-void
.end method
