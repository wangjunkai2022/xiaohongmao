.class public final synthetic Lcom/im/freechat/ui/chatlist/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Lcom/im/freechat/ui/chatlist/ChatListFragment;

.field public final synthetic c:I

.field public final synthetic d:Lcom/im/freechat/shared/entities/chat/Chat;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Lcom/im/freechat/ui/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/e;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/im/freechat/ui/chatlist/e;->b:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    iput p3, p0, Lcom/im/freechat/ui/chatlist/e;->c:I

    iput-object p4, p0, Lcom/im/freechat/ui/chatlist/e;->d:Lcom/im/freechat/shared/entities/chat/Chat;

    iput p5, p0, Lcom/im/freechat/ui/chatlist/e;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/e;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/e;->b:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    iget v2, p0, Lcom/im/freechat/ui/chatlist/e;->c:I

    iget-object v3, p0, Lcom/im/freechat/ui/chatlist/e;->d:Lcom/im/freechat/shared/entities/chat/Chat;

    iget v4, p0, Lcom/im/freechat/ui/chatlist/e;->e:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->l0([Ljava/lang/String;Lcom/im/freechat/ui/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;ILandroid/content/DialogInterface;I)V

    return-void
.end method
