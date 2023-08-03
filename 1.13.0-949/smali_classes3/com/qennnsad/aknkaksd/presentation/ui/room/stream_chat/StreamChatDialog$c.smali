.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;
.super Lkotlin/jvm/internal/Lambda;
.source "StreamChatDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

.field final synthetic b:Le5/p0;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;Le5/p0;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;->b:Le5/p0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v0, "requireActivity()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    const v2, 0x7f1303e8

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    const v3, 0x7f1303e7

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    const v4, 0x7f1300ee

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    const v5, 0x7f1300d1

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c$a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    iget-object v7, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;->b:Le5/p0;

    invoke-direct {v6, v0, v7}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;Le5/p0;)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/qennnsad/aknkaksd/util/l;->P(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method
