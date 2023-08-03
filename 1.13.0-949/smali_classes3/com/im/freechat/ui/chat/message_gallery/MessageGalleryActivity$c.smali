.class final Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$c;
.super Lkotlin/jvm/internal/Lambda;
.source "MessageGalleryActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/widget/FrameLayout;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroid/widget/FrameLayout;",
        "it",
        "",
        "a",
        "(Landroid/widget/FrameLayout;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$c;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$c;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {v0}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->a0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)V

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$c;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {v0}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->e0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "playerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$c;->a(Landroid/widget/FrameLayout;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
