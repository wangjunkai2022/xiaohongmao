.class public final synthetic Lcom/im/freechat/ui/chat/message_gallery/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/i;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/message_gallery/i;->b:Ljava/util/List;

    iput p3, p0, Lcom/im/freechat/ui/chat/message_gallery/i;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/message_gallery/i;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/message_gallery/i;->b:Ljava/util/List;

    iget v2, p0, Lcom/im/freechat/ui/chat/message_gallery/i;->c:I

    invoke-static {v0, v1, v2}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->V(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;Ljava/util/List;I)V

    return-void
.end method
