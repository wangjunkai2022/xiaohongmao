.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$n;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->L0(Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;",
        "it",
        "",
        "a",
        "(Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$n;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$n;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$n;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$n;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$n;->a(Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
