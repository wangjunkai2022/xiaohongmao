.class public final synthetic Lcom/qennnsad/aknkaksd/util/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/util/e0;

.field public final synthetic c:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

.field public final synthetic d:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/a0;->a:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/a0;->b:Lcom/qennnsad/aknkaksd/util/e0;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/a0;->c:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/util/a0;->d:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

    iput-object p5, p0, Lcom/qennnsad/aknkaksd/util/a0;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/a0;->a:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/a0;->b:Lcom/qennnsad/aknkaksd/util/e0;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/a0;->c:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/a0;->d:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/a0;->e:Lkotlin/jvm/functions/Function0;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/util/e0;->c(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method
