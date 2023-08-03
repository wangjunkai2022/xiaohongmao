.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/user/s0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/user/u0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/u0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/s0;->a:Lcom/qennnsad/aknkaksd/domain/usecase/user/u0;

    iput p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/s0;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/s0;->a:Lcom/qennnsad/aknkaksd/domain/usecase/user/u0;

    iget v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/s0;->b:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/user/u0;->c(Lcom/qennnsad/aknkaksd/domain/usecase/user/u0;ILjava/lang/String;)V

    return-void
.end method
