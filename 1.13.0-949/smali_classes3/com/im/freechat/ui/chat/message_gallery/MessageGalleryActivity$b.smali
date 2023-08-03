.class final Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$b;
.super Lkotlin/jvm/internal/Lambda;
.source "MessageGalleryActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "videoAttachment",
        "",
        "position",
        "",
        "a",
        "(Lcom/im/freechat/shared/entities/message/VideoAttachment;I)V"
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

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$b;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/message/VideoAttachment;I)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/message/VideoAttachment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "videoAttachment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$b;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {v0, p1, p2}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->g0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;Lcom/im/freechat/shared/entities/message/VideoAttachment;I)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$b;->a(Lcom/im/freechat/shared/entities/message/VideoAttachment;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
