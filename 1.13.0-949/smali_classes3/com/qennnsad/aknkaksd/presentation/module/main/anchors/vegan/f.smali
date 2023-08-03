.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/f;
.super Ljava/lang/Object;
.source "VeganAnchorViewModel_MembersInjector.java"

# interfaces
.implements Ld6/g;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/g<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/f;->a:Lu7/c;

    return-void
.end method

.method public static b(Lu7/c;)Ld6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;",
            ">;)",
            "Ld6/g<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/f;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/f;-><init>(Lu7/c;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/f;->c(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;)V

    return-void
.end method

.method public c(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/f;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/e;->c(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;)V

    return-void
.end method
