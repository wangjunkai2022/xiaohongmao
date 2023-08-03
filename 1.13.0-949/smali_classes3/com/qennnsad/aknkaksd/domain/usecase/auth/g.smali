.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/auth/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/g;->a:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/g;->a:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->e(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
