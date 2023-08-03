.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/user/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/user/h;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/g;->a:Lcom/qennnsad/aknkaksd/domain/usecase/user/h;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/g;->a:Lcom/qennnsad/aknkaksd/domain/usecase/user/h;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/user/h;->c(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;

    move-result-object p1

    return-object p1
.end method
