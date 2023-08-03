.class public final Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;
.super Ljava/lang/Object;
.source "ContributorsViewModel_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;",
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
            "Lcom/qennnsad/aknkaksd/domain/usecase/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;",
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


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroidx/lifecycle/SavedStateHandle;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/b;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->d:Lu7/c;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->e:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroidx/lifecycle/SavedStateHandle;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/b;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;"
        }
    .end annotation

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v6
.end method

.method public static c(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/b;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lg5/a;)Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;
    .locals 7

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/b;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lg5/a;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;
    .locals 5

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/SavedStateHandle;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/domain/usecase/b;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->c:Lu7/c;

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->d:Lu7/c;

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qennnsad/aknkaksd/domain/usecase/user/w;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->e:Lu7/c;

    invoke-interface {v4}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg5/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->c(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/b;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lg5/a;)Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/j;->b()Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;

    move-result-object v0

    return-object v0
.end method
