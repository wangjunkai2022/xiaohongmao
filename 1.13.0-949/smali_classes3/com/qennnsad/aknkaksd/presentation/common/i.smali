.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/common/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/i;->a:Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/i;->a:Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->Y(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/Boolean;)V

    return-void
.end method
