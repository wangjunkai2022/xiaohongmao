.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/app/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/app/g;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/app/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/e;->a:Lcom/qennnsad/aknkaksd/domain/usecase/app/g;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/e;->a:Lcom/qennnsad/aknkaksd/domain/usecase/app/g;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->d(Lcom/qennnsad/aknkaksd/domain/usecase/app/g;Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)V

    return-void
.end method
