.class public final synthetic Lcom/qennnsad/aknkaksd/util/r1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/r1;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/r1;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/s1;->b(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
