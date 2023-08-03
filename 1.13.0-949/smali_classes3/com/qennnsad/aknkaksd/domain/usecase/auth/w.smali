.class public final Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;
.super Ljava/lang/Object;
.source "LoginGuestUseCase_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;",
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
            "Lg5/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/JwtUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lx4/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lg5/f;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/JwtUtil;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->d:Lu7/c;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->e:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lg5/f;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/JwtUtil;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;"
        }
    .end annotation

    new-instance v6, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v6
.end method

.method public static c(Lg5/a;Lg5/f;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;
    .locals 7

    new-instance v6, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;-><init>(Lg5/a;Lg5/f;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;
    .locals 5

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/f;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->c:Lu7/c;

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/util/JwtUtil;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->d:Lu7/c;

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx4/a;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->e:Lu7/c;

    invoke-interface {v4}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->c(Lg5/a;Lg5/f;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/w;->b()Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;

    move-result-object v0

    return-object v0
.end method
