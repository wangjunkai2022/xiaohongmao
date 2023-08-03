.class public final Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$f;
.super Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;
.source "BaseMvvmActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->d0(Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$f",
        "Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;",
        "dialog",
        "",
        "b",
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity<",
            "TVB;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity<",
            "TVB;>;",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$f;->a:Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$f;->b:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V
    .locals 7
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;->b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$f;->a:Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$f;->b:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;

    iget-object v1, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/util/l;->z(Landroid/content/Context;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;ZZILjava/lang/Object;)V

    return-void
.end method
