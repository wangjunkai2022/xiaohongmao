.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/publsh/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/a;->a:Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/a;->b:Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/a;->a:Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/a;->b:Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c$a;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/room/LiveRoomEndInfo;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;->d(Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c$a;Lcom/qennnsad/aknkaksd/data/bean/room/LiveRoomEndInfo;)V

    return-void
.end method
