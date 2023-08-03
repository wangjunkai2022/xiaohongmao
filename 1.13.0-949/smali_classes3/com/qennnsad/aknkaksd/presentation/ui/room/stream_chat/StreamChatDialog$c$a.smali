.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c$a;
.super Lkotlin/jvm/internal/Lambda;
.source "StreamChatDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamChatDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamChatDialog.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$initViews$1$2$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,208:1\n252#2:209\n*S KotlinDebug\n*F\n+ 1 StreamChatDialog.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$initViews$1$2$1\n*L\n89#1:209\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "a",
        "(Z)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

.field final synthetic b:Le5/p0;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;Le5/p0;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c$a;->b:Le5/p0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;->r0()Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c$a;->b:Le5/p0;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Le5/p0;->h:Landroidx/constraintlayout/widget/Group;

    const-string v2, "groupDepositOptions"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;->m0(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->w0(I)Lkotlinx/coroutines/j2;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$c$a;->a(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
