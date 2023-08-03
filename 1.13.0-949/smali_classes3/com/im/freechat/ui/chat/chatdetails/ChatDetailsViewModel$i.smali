.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$i;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->o0(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "it",
        "",
        "a",
        "(Lcom/im/freechat/shared/entities/DownloadInfo;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

.field final synthetic b:Lcom/im/freechat/shared/entities/message/VideoAttachment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lcom/im/freechat/shared/entities/message/VideoAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$i;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$i;->b:Lcom/im/freechat/shared/entities/message/VideoAttachment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/DownloadInfo;)V
    .locals 5
    .param p1    # Lcom/im/freechat/shared/entities/DownloadInfo;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$i;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    sget-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->OPEN_FULLSCREEN:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    invoke-static {}, Lcom/im/freechat/ui/chat/chatdetails/y1;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$i;->b:Lcom/im/freechat/shared/entities/message/VideoAttachment;

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getMediaId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/im/freechat/base/a;->e(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$i;->a(Lcom/im/freechat/shared/entities/DownloadInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
