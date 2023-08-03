.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;
.super Landroid/os/CountDownTimer;
.source "ReceivedPinMessageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->t(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReceivedPinMessageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReceivedPinMessageAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/ReceivedPinMessageAdapter$setupTimers$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,207:1\n350#2,7:208\n350#2,7:215\n*S KotlinDebug\n*F\n+ 1 ReceivedPinMessageAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/ReceivedPinMessageAdapter$setupTimers$2$1\n*L\n62#1:208,7\n67#1:215,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d",
        "Landroid/os/CountDownTimer;",
        "",
        "millisUntilFinished",
        "",
        "onTick",
        "onFinish",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

.field final synthetic c:Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            "J)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;->c:Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    const-wide/16 p1, 0x3e8

    invoke-direct {p0, p4, p5, p1, p2}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;->c:Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    .line 4
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    invoke-static {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->i(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;I)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;->a:Ljava/util/List;

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;->c:Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    .line 4
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    const-string p2, "Timer"

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method
