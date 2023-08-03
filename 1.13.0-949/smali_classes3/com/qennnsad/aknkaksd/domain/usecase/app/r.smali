.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/app/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/app/s;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/app/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/r;->a:Lcom/qennnsad/aknkaksd/domain/usecase/app/s;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/r;->a:Lcom/qennnsad/aknkaksd/domain/usecase/app/s;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/app/s;->c(Lcom/qennnsad/aknkaksd/domain/usecase/app/s;Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
