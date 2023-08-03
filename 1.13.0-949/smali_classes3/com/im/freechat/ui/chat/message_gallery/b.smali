.class public final synthetic Lcom/im/freechat/ui/chat/message_gallery/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/message_gallery/c$a;

.field public final synthetic b:Lcom/im/freechat/ui/chat/history/a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/message_gallery/c$a;Lcom/im/freechat/ui/chat/history/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/b;->a:Lcom/im/freechat/ui/chat/message_gallery/c$a;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/message_gallery/b;->b:Lcom/im/freechat/ui/chat/history/a;

    iput p3, p0, Lcom/im/freechat/ui/chat/message_gallery/b;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/message_gallery/b;->a:Lcom/im/freechat/ui/chat/message_gallery/c$a;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/message_gallery/b;->b:Lcom/im/freechat/ui/chat/history/a;

    iget v2, p0, Lcom/im/freechat/ui/chat/message_gallery/b;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/im/freechat/ui/chat/message_gallery/c$a;->b(Lcom/im/freechat/ui/chat/message_gallery/c$a;Lcom/im/freechat/ui/chat/history/a;ILandroid/view/View;)V

    return-void
.end method
