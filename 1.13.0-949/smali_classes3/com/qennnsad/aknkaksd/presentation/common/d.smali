.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/common/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/common/e;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/common/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/d;->a:Lcom/qennnsad/aknkaksd/presentation/common/e;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/d;->a:Lcom/qennnsad/aknkaksd/presentation/common/e;

    check-cast p1, Lcom/qennnsad/aknkaksd/util/t;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/e;->V(Lcom/qennnsad/aknkaksd/presentation/common/e;Lcom/qennnsad/aknkaksd/util/t;)V

    return-void
.end method
