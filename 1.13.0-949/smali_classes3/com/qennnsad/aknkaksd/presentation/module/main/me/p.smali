.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/me/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/p;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/p;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;->D0(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)V

    return-void
.end method
