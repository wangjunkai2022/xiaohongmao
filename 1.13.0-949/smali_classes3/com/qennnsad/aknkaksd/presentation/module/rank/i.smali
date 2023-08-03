.class public final Lcom/qennnsad/aknkaksd/presentation/module/rank/i;
.super Ljava/lang/Object;
.source "RankViewModel_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Landroidx/lifecycle/SavedStateHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroidx/lifecycle/SavedStateHandle;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/h;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->d:Lu7/c;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->e:Lu7/c;

    .line 7
    iput-object p6, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->f:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/module/rank/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroidx/lifecycle/SavedStateHandle;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/h;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/module/rank/i;"
        }
    .end annotation

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v7
.end method

.method public static c(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/h;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lg5/a;Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;
    .locals 8

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/h;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lg5/a;Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V

    return-object v7
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;
    .locals 7

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/SavedStateHandle;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/qennnsad/aknkaksd/domain/usecase/h;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->c:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->d:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->e:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lg5/a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->f:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->c(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/h;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lg5/a;Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/i;->b()Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;

    move-result-object v0

    return-object v0
.end method
