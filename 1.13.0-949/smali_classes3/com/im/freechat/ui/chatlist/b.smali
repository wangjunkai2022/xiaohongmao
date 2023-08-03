.class public final synthetic Lcom/im/freechat/ui/chatlist/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chatlist/d$a;

.field public final synthetic b:Lcom/im/freechat/shared/entities/chat/Chat;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chatlist/d$a;Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/b;->a:Lcom/im/freechat/ui/chatlist/d$a;

    iput-object p2, p0, Lcom/im/freechat/ui/chatlist/b;->b:Lcom/im/freechat/shared/entities/chat/Chat;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/b;->a:Lcom/im/freechat/ui/chatlist/d$a;

    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/b;->b:Lcom/im/freechat/shared/entities/chat/Chat;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chatlist/d$a;->b(Lcom/im/freechat/ui/chatlist/d$a;Lcom/im/freechat/shared/entities/chat/Chat;Landroid/view/View;)V

    return-void
.end method
