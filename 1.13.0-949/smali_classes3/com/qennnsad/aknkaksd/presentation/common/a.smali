.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/common/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/a;->a:Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/a;->a:Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->G(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
