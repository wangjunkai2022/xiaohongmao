.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$e;
.super Lkotlin/jvm/internal/Lambda;
.source "PublicChatAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;-><init>(Lg5/a;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/qennnsad/aknkaksd/util/translation/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/translation/h;",
        "a",
        "()Lcom/qennnsad/aknkaksd/util/translation/h;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$e;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$e;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$e;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$e;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/qennnsad/aknkaksd/util/translation/h;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lf5/d;

    invoke-static {v0, v1}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf5/d;

    invoke-interface {v0}, Lf5/d;->c()Lf5/e;

    move-result-object v0

    invoke-virtual {v0}, Lf5/e;->h()Lcom/qennnsad/aknkaksd/util/translation/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$e;->a()Lcom/qennnsad/aknkaksd/util/translation/h;

    move-result-object v0

    return-object v0
.end method
