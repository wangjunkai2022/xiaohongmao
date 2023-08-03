.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/app/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/app/l;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/app/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/i;->a:Lcom/qennnsad/aknkaksd/domain/usecase/app/l;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/i;->a:Lcom/qennnsad/aknkaksd/domain/usecase/app/l;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/app/l;->d(Lcom/qennnsad/aknkaksd/domain/usecase/app/l;Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;)V

    return-void
.end method
