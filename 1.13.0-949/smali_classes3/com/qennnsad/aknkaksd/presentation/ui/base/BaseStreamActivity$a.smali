.class Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;
.super Ljava/lang/Object;
.source "BaseStreamActivity.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->M0(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;->a:Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;->d()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d()Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->a()V

    const v0, 0x7f13038e

    .line 2
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/toast/a;->h(I)V

    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->c()Landroid/app/Dialog;

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->P()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;->a:Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/base/m;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/m;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity$a;)V

    invoke-virtual {p1, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->N(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/j2;

    return-void
.end method
