.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/c;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/c;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/c;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/c;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->u0(Landroidx/recyclerview/widget/RecyclerView;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;)V

    return-void
.end method
