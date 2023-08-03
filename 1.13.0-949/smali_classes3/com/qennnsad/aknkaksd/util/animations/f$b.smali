.class final Lcom/qennnsad/aknkaksd/util/animations/f$b;
.super Lkotlin/jvm/internal/Lambda;
.source "PeerageAnimationUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/animations/f;->c(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;)V
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/util/animations/f;

.field final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/animations/f;Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/animations/f$b;->a:Lcom/qennnsad/aknkaksd/util/animations/f;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/animations/f$b;->b:Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5

    const-string v0, "completedCount"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "success"

    goto :goto_0

    :cond_0
    const-string v0, "pending"

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "Adding animation is the head of the queue."

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/animations/f$b;->a:Lcom/qennnsad/aknkaksd/util/animations/f;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/util/animations/f;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Svga download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " items). "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/animations/f$b;->a:Lcom/qennnsad/aknkaksd/util/animations/f;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/animations/f$b;->b:Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v1, v3}, Lcom/qennnsad/aknkaksd/util/animations/f;->k(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/animations/f$b;->b:Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->getCache_name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/animations/f$b;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
