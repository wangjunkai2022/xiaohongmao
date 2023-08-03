.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/common/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/m;->a:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/m;->a:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->s(Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)V

    return-void
.end method
