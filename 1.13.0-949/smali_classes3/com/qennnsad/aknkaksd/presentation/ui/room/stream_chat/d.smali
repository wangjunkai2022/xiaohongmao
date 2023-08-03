.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    check-cast p1, Lcom/im/freechat/shared/entities/chat/Chat;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;->i0(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;Lcom/im/freechat/shared/entities/chat/Chat;)V

    return-void
.end method
