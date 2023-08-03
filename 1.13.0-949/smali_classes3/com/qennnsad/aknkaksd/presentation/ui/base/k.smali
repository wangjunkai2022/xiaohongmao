.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/base/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/k;->a:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/k;->a:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j0(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
