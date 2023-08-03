.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/s;
.super Ljava/lang/Object;
.source "MainFragmentFlavorController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainFragmentFlavorController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainFragmentFlavorController.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/MainFragmentFlavorControllerKt\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,9:1\n254#2,2:10\n254#2,2:12\n*S KotlinDebug\n*F\n+ 1 MainFragmentFlavorController.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/MainFragmentFlavorControllerKt\n*L\n7#1:10,2\n8#1:12,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;",
        "",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;)V
    .locals 2
    .param p0    # Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/k1;

    iget-object v0, v0, Le5/k1;->g:Landroid/widget/RelativeLayout;

    const-string v1, "requireBinding().mainRlMall"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Le5/k1;

    iget-object p0, p0, Le5/k1;->i:Landroid/widget/RelativeLayout;

    const-string v0, "requireBinding().mainRlPush"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
