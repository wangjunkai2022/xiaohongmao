.class final Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;
.super Lkotlin/jvm/internal/Lambda;
.source "GiftAnimationUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;->j(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGiftAnimationUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GiftAnimationUtil.kt\ncom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$downloadAndPlaySvga$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,264:1\n1#2:265\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "kotlin.jvm.PlatformType",
        "completedCount",
        "",
        "a",
        "(Ljava/lang/Integer;)Ljava/lang/String;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

.field final synthetic b:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;->b:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 8

    const-string v0, "completedCount"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v3, "success"

    goto :goto_1

    .line 2
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pending. msg.comboHit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getComboHit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    :goto_1
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getComboHit()I

    move-result v4

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getGiftName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] animation items to the head of queue. comboHitStart="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    .line 5
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;->b:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    invoke-static {v6}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;->g(Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".Download"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Svga download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Completed: ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " items "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getGiftName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "). "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;->b:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    const/4 v5, 0x0

    :goto_3
    if-ge v5, p1, :cond_3

    add-int v6, v4, v5

    .line 7
    invoke-virtual {v3, v6}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    .line 8
    invoke-virtual {v0, v3, v1, v2}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;->y(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;ZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getCache_name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$b;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
