.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/user/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/user/h;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/f;->a:Lcom/qennnsad/aknkaksd/domain/usecase/user/h;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/f;->a:Lcom/qennnsad/aknkaksd/domain/usecase/user/h;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/user/h;->d(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;)V

    return-void
.end method
