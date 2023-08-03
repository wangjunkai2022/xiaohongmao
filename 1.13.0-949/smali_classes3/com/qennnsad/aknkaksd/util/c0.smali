.class public final synthetic Lcom/qennnsad/aknkaksd/util/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/util/e0;

.field public final synthetic c:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/c0;->a:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/c0;->b:Lcom/qennnsad/aknkaksd/util/e0;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/c0;->c:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/c0;->a:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/c0;->b:Lcom/qennnsad/aknkaksd/util/e0;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/c0;->c:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

    invoke-static {v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/util/e0;->g(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Landroid/view/View;)V

    return-void
.end method
