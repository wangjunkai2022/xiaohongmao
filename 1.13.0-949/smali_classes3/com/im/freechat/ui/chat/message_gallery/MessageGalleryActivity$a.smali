.class public final Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$a;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->o0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnPreDraw$1\n+ 2 MessageGalleryActivity.kt\ncom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity\n*L\n1#1,411:1\n135#2,6:412\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0000H\n\u00a8\u0006\u0001"
    }
    d2 = {
        "",
        "androidx/core/view/ViewKt$doOnPreDraw$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$a;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$a;->b:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    iput p3, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$a;->b:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {v0}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->d0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    const-string v1, "layoutManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget v3, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$a;->c:I

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "layoutManager.findViewBy\u2026on) ?: return@doOnPreDraw"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v3, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$a;->b:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {v3}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->f0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)Landroidx/recyclerview/widget/SnapHelper;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "snapHelper"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    iget-object v4, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$a;->b:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {v4}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->d0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_3
    invoke-virtual {v3, v4, v0}, Landroidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "snapHelper.calculateDist\u2026    ?: return@doOnPreDraw"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$a;->b:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {v3}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->d0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v3

    :goto_0
    iget v1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$a;->c:I

    const/4 v3, 0x0

    aget v0, v0, v3

    neg-int v0, v0

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_1
    return-void
.end method
