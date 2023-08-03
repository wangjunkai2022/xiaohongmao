.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/user/i1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/domain/usecase/user/k1$a;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;Lcom/qennnsad/aknkaksd/domain/usecase/user/k1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/i1;->a:Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/i1;->b:Lcom/qennnsad/aknkaksd/domain/usecase/user/k1$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/i1;->a:Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/i1;->b:Lcom/qennnsad/aknkaksd/domain/usecase/user/k1$a;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;->d(Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;Lcom/qennnsad/aknkaksd/domain/usecase/user/k1$a;Ljava/lang/String;)V

    return-void
.end method
