.class public final Lcom/qennnsad/aknkaksd/presentation/common/n;
.super Ljava/lang/Object;
.source "SharedViewModel_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;",
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
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
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

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/room/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/room/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->d:Lu7/c;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->e:Lu7/c;

    .line 7
    iput-object p6, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->f:Lu7/c;

    .line 8
    iput-object p7, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->g:Lu7/c;

    .line 9
    iput-object p8, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->h:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/common/n;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/room/e;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/common/n;"
        }
    .end annotation

    new-instance v9, Lcom/qennnsad/aknkaksd/presentation/common/n;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/presentation/common/n;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v9
.end method

.method public static c(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;Lcom/qennnsad/aknkaksd/domain/usecase/room/e;)Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;
    .locals 10

    new-instance v9, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;Lcom/qennnsad/aknkaksd/domain/usecase/room/e;)V

    return-object v9
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;
    .locals 9

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lg5/a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->c:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lx4/a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->d:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->e:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->f:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->g:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/n;->h:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/qennnsad/aknkaksd/domain/usecase/room/e;

    invoke-static/range {v1 .. v8}, Lcom/qennnsad/aknkaksd/presentation/common/n;->c(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;Lcom/qennnsad/aknkaksd/domain/usecase/room/e;)Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/n;->b()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object v0

    return-object v0
.end method
