.class public final Lcom/qennnsad/aknkaksd/presentation/common/k;
.super Ljava/lang/Object;
.source "BaseMvvmFragment_MembersInjector.java"

# interfaces
.implements Ld6/g;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        "Event:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld6/g<",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment<",
        "TVB;TEvent;>;>;"
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


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/k;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/common/k;->b:Lu7/c;

    return-void
.end method

.method public static b(Lu7/c;Lu7/c;)Ld6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VB::",
            "Landroidx/viewbinding/ViewBinding;",
            "Event:",
            "Ljava/lang/Object;",
            ">(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;)",
            "Ld6/g<",
            "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment<",
            "TVB;TEvent;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/common/k;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/k;-><init>(Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment.analytics"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VB::",
            "Landroidx/viewbinding/ViewBinding;",
            "Event:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment<",
            "TVB;TEvent;>;",
            "Lx4/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d:Lx4/a;

    return-void
.end method

.method public static d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment.localDataManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VB::",
            "Landroidx/viewbinding/ViewBinding;",
            "Event:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment<",
            "TVB;TEvent;>;",
            "Lg5/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->c:Lg5/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/k;->e(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;)V

    return-void
.end method

.method public e(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment<",
            "TVB;TEvent;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/k;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/k;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-void
.end method
