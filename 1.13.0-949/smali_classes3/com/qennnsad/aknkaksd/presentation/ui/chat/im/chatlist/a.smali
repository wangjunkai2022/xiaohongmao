.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;

.field public final synthetic c:I

.field public final synthetic d:Lcom/im/freechat/shared/entities/chat/Chat;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;

    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;->c:I

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;->d:Lcom/im/freechat/shared/entities/chat/Chat;

    iput p5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;->c:I

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;->d:Lcom/im/freechat/shared/entities/chat/Chat;

    iget v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;->e:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->a0([Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;ILandroid/content/DialogInterface;I)V

    return-void
.end method
