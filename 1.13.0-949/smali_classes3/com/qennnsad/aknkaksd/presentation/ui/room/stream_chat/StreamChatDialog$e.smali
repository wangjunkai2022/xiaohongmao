.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$e;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamChatDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamChatDialog.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$initViews$1$4\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,208:1\n254#2,2:209\n*S KotlinDebug\n*F\n+ 1 StreamChatDialog.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$initViews$1$4\n*L\n108#1:209,2\n*E\n"
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
.field final synthetic a:Le5/p0;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;


# direct methods
.method constructor <init>(Le5/p0;Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$e;->a:Le5/p0;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$e;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$e;->a:Le5/p0;

    iget-object v0, v0, Le5/p0;->h:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupDepositOptions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;->r0()Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;->m0(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->o0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->E(Ljava/lang/String;)V

    return-void
.end method
