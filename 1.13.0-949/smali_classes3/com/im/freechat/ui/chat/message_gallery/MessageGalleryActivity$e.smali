.class final Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$e;
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
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "a",
        "(I)V"
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

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$e;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$e;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->c0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)Lcom/im/freechat/ui/chat/message_gallery/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/message_gallery/c;->d()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$e;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->c0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)Lcom/im/freechat/ui/chat/message_gallery/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/im/freechat/ui/chat/message_gallery/c;->i(I)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$e;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->k0()Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;->p()V

    .line 4
    iget-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$e;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->a0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$e;->a(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
