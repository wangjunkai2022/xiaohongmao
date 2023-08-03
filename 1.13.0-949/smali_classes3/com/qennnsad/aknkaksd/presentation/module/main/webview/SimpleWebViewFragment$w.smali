.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$w;
.super Ljava/lang/Object;
.source "SimpleWebViewFragment.kt"

# interfaces
.implements Lcom/opensource/svgaplayer/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->l1()V
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
        "com/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$w",
        "Lcom/opensource/svgaplayer/i$d;",
        "Lcom/opensource/svgaplayer/l;",
        "videoItem",
        "",
        "b",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Le5/x1;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;


# direct methods
.method constructor <init>(Le5/x1;Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$w;->a:Le5/x1;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$w;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$w;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->P0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Z)V

    return-void
.end method

.method public b(Lcom/opensource/svgaplayer/l;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/l;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$w;->a:Le5/x1;

    iget-object v0, v0, Le5/x1;->i:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/l;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$w;->a:Le5/x1;

    iget-object p1, p1, Le5/x1;->i:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->z()V

    return-void
.end method
