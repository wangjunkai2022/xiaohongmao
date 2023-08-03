.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/room/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/c0;->a:Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/c0;->b:Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/c0;->a:Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/c0;->b:Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->c(Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;)V

    return-void
.end method
