.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "StreamChatViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;IJLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->b:I

    iput-wide p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->c:J

    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->d:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->v(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;)Lg5/a;

    move-result-object p1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->b:I

    iget-wide v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lg5/a;->Y(IJ)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$d;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->b:I

    iget-wide v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->c:J

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$d;-><init>(IJ)V

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->t(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;)Lx4/a;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_RECHARGE_DIALOG_CREATED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    iget v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 7
    invoke-virtual {p1, v0, v1}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;

    const v0, 0x7f13014b

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    .line 9
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$b;

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b$a;->a(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
