.class public final Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;
.super Ljava/lang/Object;
.source "GetLiveRoomEndInfoUseCase_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lx4/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;->c:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;-><init>(Lu7/c;Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lx4/a;)Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lx4/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/a;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;->c:Lu7/c;

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx4/a;

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;->c(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lx4/a;)Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/publsh/d;->b()Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;

    move-result-object v0

    return-object v0
.end method
