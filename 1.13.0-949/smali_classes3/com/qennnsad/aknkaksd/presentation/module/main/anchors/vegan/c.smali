.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/c;
.super Ljava/lang/Object;
.source "VeganAnchorViewModel_Factory.java"

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
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/c;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/c;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/c;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/c;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;
    .locals 2

    .line 1
    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/c;->c()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/c;->a:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/e;->c(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/c;->b()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;

    move-result-object v0

    return-object v0
.end method
