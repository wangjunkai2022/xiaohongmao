.class public final Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;
.super Ljava/lang/Object;
.source "LinkGuestUseCase_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lx4/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;",
            "Lu7/c<",
            "Lg5/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;->d:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;",
            "Lu7/c<",
            "Lg5/f;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;Lg5/f;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;-><init>(Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;Lg5/f;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;
    .locals 4

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx4/a;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;->c:Lu7/c;

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/data/websocket/j;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;->d:Lu7/c;

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg5/f;

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;->c(Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;Lg5/f;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/u;->b()Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;

    move-result-object v0

    return-object v0
.end method
