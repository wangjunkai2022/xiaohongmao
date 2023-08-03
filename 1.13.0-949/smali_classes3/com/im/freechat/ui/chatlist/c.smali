.class public final synthetic Lcom/im/freechat/ui/chatlist/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chatlist/d$a;

.field public final synthetic b:Lcom/im/freechat/shared/entities/chat/Chat;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chatlist/d$a;Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/c;->a:Lcom/im/freechat/ui/chatlist/d$a;

    iput-object p2, p0, Lcom/im/freechat/ui/chatlist/c;->b:Lcom/im/freechat/shared/entities/chat/Chat;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/c;->a:Lcom/im/freechat/ui/chatlist/d$a;

    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/c;->b:Lcom/im/freechat/shared/entities/chat/Chat;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chatlist/d$a;->c(Lcom/im/freechat/ui/chatlist/d$a;Lcom/im/freechat/shared/entities/chat/Chat;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
