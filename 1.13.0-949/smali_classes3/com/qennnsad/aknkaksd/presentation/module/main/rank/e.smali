.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/rank/e;
.super Ljava/lang/Object;
.source "MainRankViewModel_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;",
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
            "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/e;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/module/main/rank/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/e;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/e;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/e;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/e;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/e;->c(Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/e;->b()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;

    move-result-object v0

    return-object v0
.end method
